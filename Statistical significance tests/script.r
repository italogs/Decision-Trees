greedy <- c(100.0, 100.0, 71.04, 98.25, 79.81, 98.41, 85.85, 96.99, 83.68, 94.08)

msils10 <- c(100.00,100.00,77.92,99.42,81.42,98.77,90.40,98.14,87.15,94.09)

significance_level = 0.05


print("Wilcoxon Test - Pairwise - 5% significance level")
print("Two Sided Test **BEGIN**")
cat("significance_level: ",significance_level)

wilcox_result = wilcox.test(greedy,msils10,paired=TRUE)
print(wilcox_result)
print(wilcox_result["p.value"])

if(wilcox_result["p.value"] < significance_level) {
	print("Resultados COM significância estatística")
} else {
	print("Resultados SEM significância estatística")
} 
