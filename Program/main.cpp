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
		int MAX_IT = 1;
		int MAX_ILS = 15;
		Solution best_global_solution(&params);
		for(int i = 0 ; i < MAX_IT ; i++)
		{
			Solution solution(&params);
			Greedy solver(&params,&solution);
			solver.run();
			int it_ils = 0;
			while(it_ils < MAX_ILS)
			{
				solution.printAndExport(c.get_path_to_solution());
				if(solution.getMisclassifiedSamples() < best_global_solution.getMisclassifiedSamples()) {
					printf("solution.getMisclassifiedSamples() %d, best_global_solution.getMisclassifiedSamples() %d",solution.getMisclassifiedSamples(), best_global_solution.getMisclassifiedSamples());
					Solution::copySolution(&best_global_solution,&solution);
					printf("solution.getMisclassifiedSamples() %d, best_global_solution.getMisclassifiedSamples() %d",solution.getMisclassifiedSamples(), best_global_solution.getMisclassifiedSamples());
				}
				it_ils++;
			}
			printf("Misclassified: %d\n",solution.getMisclassifiedSamples());
		}
		params.endTime = clock();
		std::cout << "----- DECISION TREE OPTIMIZATION COMPLETED IN " << (params.endTime - params.startTime) / (double)CLOCKS_PER_SEC << "(s)" << std::endl;
		
		// Printing the solution and exporting statistics (also export results into a file)
		
		std::cout << "----- END OF ALGORITHM" << std::endl;
	}
	return 0;
}
