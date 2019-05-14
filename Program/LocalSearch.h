#ifndef LOCALSEARCH_H
#define LOCALSEARCH_H

#include "Params.h"
#include "Solution.h"
#include "Greedy.h"

class LocalSearch
{
	private:

		Params * params;		 // Access to the problem and dataset parameters
		Solution * solution;	 // Access to the solution structure to be filled
		Solution * incumbentSolution; 

		/* Data structures */
		int target_node, target_level;
		int nbInternalNodes;
		std::vector<int> descendants;
	public:

		int getTreeLevelByNode(int node);
		void setAllDescendants(int node, int level);

		void run();
		void recursiveGreedyConstruction(int node, int level);
		void move1(int node, int level);
		void perturbation();
		void perturbationMove(int node, int level);
		static bool increasingOrderHistory(std::pair < double, std::pair<double,int > > i, std::pair < double, std::pair<double,int > > j);
		// Constructor
		LocalSearch(Params * params, Solution * solution): params(params), solution(solution)
		{
			this->nbInternalNodes = std::pow(2,params->maxDepth)-1;
		};
};

#endif
