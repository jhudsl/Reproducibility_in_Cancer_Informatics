---
title: "Code review"
---



# Code review

## Learning Objectives

<img src="resources/images/09-code-review_files/figure-html//1LMurysUhCjZb7DVF6KS9QmJ5NBjwWVjRn40MS9f2noE_gf8379bb805_0_6.png" title="This chapter will demonstrate how to: How code review is the best way to enhance the reproducibility of your analyses over time. Engage in basic code review for your analysis." alt="This chapter will demonstrate how to: How code review is the best way to enhance the reproducibility of your analyses over time. Engage in basic code review for your analysis." style="display: block; margin: auto;" />

We've previously discussed that the only way to know if your analysis is truly reproducible is to send it to someone else to reproduce! That sentiment is at the heart of code review. Although most wouldn't dare send out a manuscript for publishing without having our collaborators giving it a line-by-line review, people don't always feel the same way about code. 

@Parker2017 describes code review:

> Code review will not guarantee an accurate analysis, but it’s one of the most reliable ways of establishing one that is more accurate than before. 

Not only does code review help boost the accuracy and reproducibility of the analysis, it also helps everyone involved in the process learn something new!

#### Recommended reading about code review 

- [Code Review Guidelines for Humans](https://phauer.com/2018/code-review-guidelines/) by @Hauer2018.
- [Your Code Sucks! – Code Review Best Practices](https://quickbirdstudios.com/blog/code-review-best-practices-guidelines/) by @Hildebr2020.
- [Best practices for Code Review](https://smartbear.com/en/learn/code-review/best-practices-for-peer-code-review/) by @Smartbear2021.
- [Why code reviews matter (and actually save time!)](https://www.atlassian.com/agile/software-development/code-reviews) by @Radigan2021.

## Exercise: Send your code to someone else to run!

In the second part of this reproducibility course we will discuss how to conduct formal line-by-line code reviews, but for now, we will discuss how to prep your analysis for someone else look at your code and attempt to run it.  

At this point, you should have a GitHub repository that contains the following:  

- A `make_heatmap` notebook 
- A README 
- A data folder containing the metadata and gene expression matrix files in a folder named `SRP070849`:
   - `SRP070849/metadata_SRP070849.tsv`
   - `SRP070849/SRP070849.tsv`
   
1) Before you send off your code to someone else, delete your output (the `results` and `plots` folders) and attempt to re-run it yourself. This also involves restarting your R session/Python kernel and running all the chunks again.  
2) If your code has any issues running, try your best to troubleshoot the problems. Read this handy guide for [tips on troubleshooting R](https://github.com/AlexsLemonade/training-modules/blob/master/intro-to-R-tidyverse/00b-debugging_resources.md). 
3) Repeat this process as much as needed until you reliably are able to re-run this code and get the same results. 
4) Re-review your documentation and code and imagine you don't have the knowledge you have -- does it make sense? The best way to do this may involve leaving your code and coming back to it with fresh eyes. Something this author likes to refer to as "letting it simmer" [@Savonen2021b]. 
5) Are you sure you've prepped this code to the best of your ability?
6) Are you really sure? 
7) Really? -- We don't mean to be annoying, but to use the code review in a manner that is the most efficient use of everyone's time, you will want to make sure you've done the most you can to make your code clear and runnable! You may want to let your code sit for a few days and let _future you_ review this before you send it to your collaborator. 
8) Okay! Great! Now you are ready to send this code to your collaborator, but first try to send them a specific set of instructions and questions about what you would like them to review, in your message to them include this information (You may want to draft this out in a scratch txt file): 

- A link to your repository that has your README to get them started. 
- Ask specifically what kind of feedback you are looking for. 
  - Are you looking for big picture feedback? Technical feedback? Scientific method feedback?
  - Are there specific areas of the code you are having trouble with or are unsure about? Send a link to the [specific lines in GitHub](https://stackoverflow.com/questions/23821235/how-to-link-to-specific-line-number-on-github) you are asking about. 
  - Are there results that are surprising, confusing, or [smell wrong](https://github.com/jennybc/code-smells-and-feels#code-smells-and-feels)?
  - Explicitly ask them what commands or tests you'd like them to test run. 
- Lastly, thank them for helping review your code!

9) Now you are ready to send your crafted message to your collaborator for review. But, for the purposes of this exercise, you may not want to ask your collaborator to spend their time carefully review this _practice_ repository, but now that you understand and have done the steps involved you are prepared to do this for your own analyses!

In the second part of this course, we will discuss how to conduct code review through GitHub, further utilize version control, and more!
