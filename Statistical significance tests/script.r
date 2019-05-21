greedy <- c(
100.00,
100.00,
100.00,
100.00,
100.00,
100.00,
100.00,
100.00,
100.00,
100.00,
71.04,
71.04,
71.04,
71.04,
71.04,
98.25,
98.25,
98.25,
98.25,
98.25,
79.81,
79.81,
79.81,
79.81,
79.81,
98.42,
98.42,
98.42,
98.42,
98.42,
85.86,
85.86,
85.86,
85.86,
85.86,
97.00,
97.00,
97.00,
97.00,
97.00,
83.68,
83.68,
83.68,
83.68,
83.68,
94.12,
94.12,
94.12,
94.12,
94.12,
99.33,
99.33,
99.33,
99.33,
99.33,
84.55,
84.55,
84.55,
84.55,
84.55,
97.14,
97.14,
97.14,
97.14,
97.14,
90.57,
90.57,
90.57,
90.57,
90.57,
99.68,
99.68,
99.68,
99.68,
99.68,
98.60,
98.60,
98.60,
98.60,
98.60,
84.34,
84.34,
84.34,
84.34,
84.34,
100.00,
100.00,
100.00,
100.00,
100.00,
100.00,
100.00,
100.00,
100.00,
100.00
)

rcl3 <- c(
100.00,
100.00,
100.00,
100.00,
100.00,
100.00,
100.00,
100.00,
100.00,
100.00,
76.00,
76.00,
76.00,
76.00,
76.00,
99.42,
99.42,
99.42,
99.42,
99.42,
80.61,
80.61,
80.61,
80.61,
80.61,
99.12,
99.12,
99.12,
99.12,
99.12,
88.38,
88.38,
88.38,
88.38,
88.38,
97.85,
97.85,
97.85,
97.85,
97.85,
87.15,
86.69,
86.69,
87.15,
86.69,
94.09,
94.09,
94.09,
94.09,
94.09,
99.33,
99.33,
99.33,
99.33,
99.33,
87.20,
87.58,
87.58,
87.30,
87.58,
99.05,
99.05,
99.05,
99.05,
99.05,
91.20,
91.18,
91.18,
91.20,
91.20,
99.68,
99.68,
99.68,
99.68,
99.68,
100.00,
100.00,
100.00,
100.00,
100.00,
84.34,
84.34,
84.34,
84.34,
84.34,
100.00,
100.00,
100.00,
100.00,
100.00,
100.00,
100.00,
100.00,
100.00,
100.00
)

rcl5 <- c(
100.00,
100.00,
100.00,
100.00,
100.00,
100.00,
100.00,
100.00,
100.00,
100.00,
77.12,
77.12,
77.12,
77.12,
77.12,
99.42,
99.42,
99.42,
99.42,
99.42,
81.28,
81.28,
81.28,
81.28,
81.28,
99.12,
99.12,
99.12,
99.12,
99.12,
91.92,
91.92,
91.92,
91.92,
91.92,
98.14,
98.14,
98.14,
98.14,
98.14,
87.15,
87.15,
87.15,
87.15,
87.15,
94.21,
94.21,
94.21,
94.21,
94.21,
99.33,
99.33,
99.33,
99.33,
99.33,
87.49,
87.58,
87.20,
87.20,
87.39,
99.05,
99.05,
99.05,
99.05,
99.05,
91.15,
91.18,
91.18,
91.18,
91.20,
99.68,
99.68,
99.68,
99.68,
99.68,
100.00,
100.00,
100.00,
100.00,
100.00,
84.34,
84.34,
84.34,
84.34,
84.34,
100.00,
100.00,
100.00,
100.00,
100.00,
100.00,
100.00,
100.00,
100.00,
100.00
)

rcl10 <- c(
100.00,
100.00,
100.00,
100.00,
100.00,
100.00,
100.00,
100.00,
100.00,
100.00,
77.60,
77.60,
77.60,
77.92,
77.60,
99.42,
99.42,
99.42,
99.42,
99.42,
81.55,
81.42,
81.42,
81.42,
81.55,
99.12,
99.12,
99.12,
99.12,
99.12,
90.91,
90.91,
89.39,
90.91,
90.40,
98.14,
98.00,
98.00,
98.00,
98.00,
86.69,
86.69,
86.69,
86.69,
86.69,
94.09,
94.09,
94.09,
94.09,
94.09,
99.33,
99.33,
99.33,
99.33,
99.33,
87.39,
87.39,
87.30,
87.39,
87.30,
100.00,
100.00,
100.00,
100.00,
100.00,
91.28,
91.24,
91.18,
91.24,
91.18,
99.68,
99.68,
99.68,
99.68,
99.68,
100.00,
100.00,
100.00,
100.00,
100.00,
84.34,
84.34,
84.34,
84.34,
84.34,
100.00,
100.00,
100.00,
100.00,
100.00,
100.00,
100.00,
100.00,
100.00,
100.00
)



significance_level = 0.05


print("Wilcoxon Test - Paired - 5% significance level")
print("Two Sided Test **BEGIN**")
print("significance_level: ",significance_level)


print("Greedy - RCL3")
wilcox_result = wilcox.test(greedy,rcl3,paired=TRUE)
print(wilcox_result)
print(wilcox_result["p.value"])

if(wilcox_result["p.value"] < significance_level) {
	print("Resultados COM significância estatística")
} else {
	print("Resultados SEM significância estatística")
} 
cat("\n\n")


print("Greedy - RCL5")
wilcox_result = wilcox.test(greedy,rcl5,paired=TRUE)
print(wilcox_result)
print(wilcox_result["p.value"])

if(wilcox_result["p.value"] < significance_level) {
	print("Resultados COM significância estatística")
} else {
	print("Resultados SEM significância estatística")
}
cat("\n\n")


print("Greedy - RCL10")
wilcox_result = wilcox.test(greedy,rcl10,paired=TRUE)
print(wilcox_result)
print(wilcox_result["p.value"])

if(wilcox_result["p.value"] < significance_level) {
	print("Resultados COM significância estatística")
} else {
	print("Resultados SEM significância estatística")
} 
cat("\n\n")


print("RCL3 - RCL5")
wilcox_result = wilcox.test(rcl3,rcl5,paired=TRUE)
print(wilcox_result)
print(wilcox_result["p.value"])

if(wilcox_result["p.value"] < significance_level) {
	print("Resultados COM significância estatística")
} else {
	print("Resultados SEM significância estatística")
} 
cat("\n\n")


print("RCL3 - RCL10")
wilcox_result = wilcox.test(rcl3,rcl10,paired=TRUE)
print(wilcox_result)
print(wilcox_result["p.value"])

if(wilcox_result["p.value"] < significance_level) {
	print("Resultados COM significância estatística")
} else {
	print("Resultados SEM significância estatística")
} 
cat("\n\n")


print("RCL5 - RCL10")
wilcox_result = wilcox.test(rcl5,rcl10,paired=TRUE)
print(wilcox_result)
print(wilcox_result["p.value"])

if(wilcox_result["p.value"] < significance_level) {
	print("Resultados COM significância estatística")
} else {
	print("Resultados SEM significância estatística")
}
cat("\n\n")