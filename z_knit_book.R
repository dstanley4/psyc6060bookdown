
# Reminder: restart R first
bookdown::render_book("index.Rmd", "bookdown::gitbook")
bookdown::render_book("index.Rmd", output_format = "bookdown::pdf_book")
bookdown::render_book("index.Rmd", output_format = "bookdown::epub_book")

#bookdown::serve_book(dir = ".", output_dir = "_book", preview = TRUE, in_session = TRUE, quiet = FALSE)
#bookdown::serve_book(dir = ".", output_dir = "_book", preview = TRUE, in_session = TRUE, quiet = FALSE)

# To stop the server, run servr::daemon_stop(1) or restart your R session

### A larger population




```{r}
library(tidyverse)
library(learnSampling)

pop_data <- get_height_population() 
```


```{r}
pop_data %>%
  summarise(pop_mean = mean(height)) %>%
  as.data.frame()
```




```{r}
pop_data %>%
  summarise(pop_mean = var(height)) %>%
  as.data.frame()
```




## Statistics vs Parameters

Statistics are used as estimates of parameters.

```{r}

# set.seed ensures you get the same random samples
set.seed(1) 

many_samples <- get_M_samples(pop.data = pop_data, 
                              data.column.name = height,
                              n = 10,
                              number.of.samples = 1000)
```

The many_sample data set contains the results for all of the random samples we specified. Use head() to see the data. Each row corresponds to a random sample.
In that row the sample number, sample size, population mean, and sample mean are provided (along with a few other numbers.
                                                                                           
                                                                                           ```{r}
                                                                                           head(many_samples)
                                                                                           
**Variance by any other name**. Variance is used in many places in inferential statistics. Unfortunately, it often goes by other names. Some of those names are listed below.

| Variance synonyms |
| - |
| $\sigma^2$ |
| Mean Squared Error |
| MSE |
| Pooled variance |
| $s_{pooled}^2$ |
| $s_{p}^2$ |
| $s_{residual}^2$ |
   
   ```
 
 We can glimpse() the many_sample data to confirm the total number of rows is that same as we requested.
 
 ```{r}
 glimpse(many_samples)
 ```
 
 Sampling variability
 ```{r}
 many_samples %>%
   pull(sample.M) %>%
   hist(main = "Histogram of Sample Means")
 ```
 
 
 Although any
 ```{r}
 many_samples %>%
   summarise(mean_of_means = mean(sample.M))
 ```
 
 
 