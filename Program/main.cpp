#include "Commandline.h"
#include "Params.h"
#include "Solution.h"
#include "Greedy.h"
#include "LocalSearch.h"

int main(int argc, char *argv[])
{
	Commandline c(argc, argv);
	if (c.is_valid())
	{
		// Initialization of the problem data from the commandline
		Params params(c.get_path_to_instance(), c.get_path_to_solution(), c.get_seed(), c.get_maxDepth(), c.get_sizeRCL(), c.get_cpu_time() * CLOCKS_PER_SEC);

		// Initialization of a solution structure
		// Run the greedy algorithm 
		std::cout << "----- STARTING DECISION TREE OPTIMIZATION" << std::endl;
		params.startTime = clock();
		int MAX_MS_IT = 100, MAX_ILS_IT = 1000, ils_it;
		
		Solution best_global_solution(&params);
		
		for(int ms_it = 0 ; ms_it < MAX_MS_IT ; ms_it++)
		{
			printf("Multi-start #%d: ",ms_it);
			Solution solution(&params);
			Greedy solver(&params,&solution);
			solver.run();

			printf("Initial solution: %d; ",solution.getMisclassifiedSamples());
			ils_it = 0;
			LocalSearch ls(&params,&solution);
			ls.run();
			Solution best_local_search_solution(&params);
			while(ils_it < MAX_ILS_IT)
			{
				if(solution.amIBetter(&best_local_search_solution))
					Solution::copySolution(&best_local_search_solution,&solution);

				if(solution.amIBetter(&best_global_solution))
					Solution::copySolution(&best_global_solution,&solution);
				ls.perturbation();
				ls.run();
				ils_it++;
			}
			printf("Best LS <%d>; Best so far: <%d>;\n",best_local_search_solution.getMisclassifiedSamples(),best_global_solution.getMisclassifiedSamples());
		}
		printf("Final best solution: %d\n",best_global_solution.getMisclassifiedSamples());
		printf("Final Accuracy: %.2lf%%\n",best_global_solution.getAccuracy());

		params.endTime = clock();
		std::cout << "----- DECISION TREE OPTIMIZATION COMPLETED IN " << (params.endTime - params.startTime) / (double)CLOCKS_PER_SEC << "(s)" << std::endl;
		std::cout << "----- END OF ALGORITHM" << std::endl;
	}
	return 0;
}
