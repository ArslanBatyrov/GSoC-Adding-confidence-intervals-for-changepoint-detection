# easy_test_changepoint
Here, I will make an attempt to correctly complete an easy test for the GSoC project (generalised changepoints). GSoC project of Ms Rebecca and  Mr Colin

So,the initial task given in the first (not the new second project), but first was:
Easy: Load the changepoint and EnvCpt packages, 
create a time series with changing AR structure, 
run only the change in AR1 and AR2 algorithms from EnvCpt NOT using the envcpt function 
(i.e. using the non-exported functions in the package) and plot the results.

This is my solution: 

I created random numbers using the seed, split into half and created a breaking point in the middle. First AR had a lower dependence, specifically 0.21 while the second had 0.85> Breaking point was exactly at the middle which was 118. I plotted both showing the breaking point using a function abline. Next, I will present the graphs:
