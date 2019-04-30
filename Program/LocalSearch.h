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


public:

    void run();

	// Constructor
	LocalSearch(Params * params, Solution * solution): params(params), solution(solution){};
};

#endif
