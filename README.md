
# Purpose

This is a simplistic greedy decision tree implementation (similar to CART, but using pre-pruning via a fixed height limit rather than post-pruning).
The purpose of this code is to serve as a starting point for the first project of INF2980.
It handles continuous or categorical attributes, as well as possible contradictory data (samples with identical attribute values having different classes).
All splits are binary and based on the information gain metric:
* for continuous attributes, the algorithm chooses the best (orthogonal) split among all attributes and possible threshold values
* for categorical attributes, the algorithm chooses the best "one-versus-all" split

# Running

```
Usage:
   my_executable dataset_path [options]
Available options:
  -t             CPU time in seconds (defaults to 300s).
  -sol           File where to output the solution statistics (defaults to the instance file name prepended with 'sol-').
  -depth         Max depth allowed for the decision tree (recommended value <= 20 as the code uses a complete tree representation in the current state)
```

Example: `./my_executable Datasets/p04.txt -depth 3 -t 600`


 For your convenience, a script file for executing all experiments was created.
 
 ``` 
 sh execute.sh
```

# Project description
Evaluation performance on training set
- 20 runs each 5 min x seeds 
- Only in training set to construct a model. You don’t need to test your model
- Report: classification, performance (time)
- Design choices: methodology
- Statistical significance test: 5-10  seeds for each instance.. put them all together (ou seja, 200 results); Pairwise wilcoxon
- Presentation: 1 for problem; 2 methodology and  design choices;  3 for results;


Dear students of INF2980,

To help with the first project, I have prepared for you an example of code base in C++ which contains the basic greedy (CART style) algorithm for a fixed tree depth, as well as some subroutines to load datasets and report solutions. The code is located here:
https://github.com/vidalt/Decision-Trees

The first project aims to propose more advanced constructive, local search or metaheuristics for decision tree construction. 
To evaluate and compare our methods we will use:
• A depth limit of 4 
• A time limit of 5min per dataset
I have included some basic instructions to measure and limit CPU time and fix a random seed (if needed) in your approach.

Some possible lines of development that you can consider for the project:
• Classic techniques to improvement construction methods: multi randomized constructions, possible look-ahead etc...
• Different criteria for the splits (still, keep in mind that we only allow binary splits in this project, for numerical attributes the split can only involve one attribute, for categorical attributes we only allow one-vs-all splits, otherwise the comparisons would be unfair)
• Try some form of local search to modify the choice of split (attribute choice and/or threshold) at one node of the tree and evaluate its impact on the whole solution
• Try some metaheuristic approaches. A suggest of solution representation, when dealing with numerical attributes, could be to represent the solution as a tree of attribute choices for the splits, and use a "decoding" routine/construction heuristic to general the real location (threshold) for each split.
• Any other idea... the sky is your limit !

Project deliverables:
The deliverables for the project include:
• The source code of your implementation, to be sent before the 20/05 at midnight.
• The slides of your presentation (after your presentations on the 21/05 and 23/05). Aim for a presentation of 10-12 minutes per student, which roughly corresponds to 6-8 slides. Be concise and go straight to the point.

Project evaluation:
• I will attach importance to the quality of your presentation, the motivation and reasoning behind the solution methods that you suggest, as well as the correctness of the computational experiments that you conduct. For example, for non-deterministic methods, I recommend that you repeat the tests several times and report average performance indicators. When you are uncertain of the impact of the effects that you discuss, consider using a simple statistical test (e.g., Pairwise Wilcoxon test between two sets of results) and compare with the results of our simple CART implementation as a baseline. Obtaining "good" results is a definite plus, but it does not replace creative ideas and good-quality analyses.

Bug reports, suggestions for improvement etc:
• The code has been recently made, I cannot guarantee that it's 100% bug free, and it was also not optimized to a large extent. I relied on a complete binary tree structure in the current version (using a simple vector), so I do not recommend to try depth limits beyond 20 (corresponding to a data structure of size 2^21-1)... Any bug report or suggestion of improvement can be made by email or by raising an "issue" in the Github project. As a group working on this first project, I encourage you to share source code and help progressing towards a good version as long as this only concerns the basic construction heuristic. Any work beyond this point (the focus of the project) should be done individually.

Finally, I recommend to not wait too much to start the project, especially if you choose a different coding language and need to reprogram the construction heuristic (it can easily take over a couple days of work to manage carefully all cases). All questions are welcome, I remain available as needed,

Good luck !
Best Regards,
--Thibaut
