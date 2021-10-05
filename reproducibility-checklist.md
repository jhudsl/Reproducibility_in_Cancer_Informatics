# Analysis Reproducibility Checklist

This checklist is to help you review your analysis project to identify areas where its reproducibility could be enhanced.

## Overall
- [ ] The main analysis can be re-run with one command
- [ ] The data needed to run the analysis are included in the project
- [ ] There is no manual steps (you never clicked or dragged something to alter the data) required to re-run the analysis
  - [ ] If no to the above question, the manual step required is highly documented and the exact steps needed to re-do the manual step are explained.

## Documentation
- [ ] The origin and measurements of the data are explained. 
- [ ] The project contains a README that covers:
  - [ ] The purpose of the project.
  - [ ] The command that can be called to re-run the analysis.
  - [ ] Information about the data files included in the project.
  - [ ] Information about any docker images
- [ ] The code contains a healthy amount of comments (particularly at any steps that may seem unorthodox).

## Project organization
- [ ] Project organization follows an identifiable structure.
- [ ] Input data has its own directory.
- [ ] Output results like `plots` and `results` tables have their own directory.

## Code Readability
- [ ] The code adheres to a particular style
- [ ] The objects in the code have names that give information about what it contains
- [ ] The code does not contain any compute environment specific steps that might break on someone else's computer (aka `setwd()`).
- [ ] All packages needed to run the code are installed and imported where required.

## Version control
- [ ] The analysis is version-controlled by git and GitHub

## Docker
- [ ] A Docker image is included to maintain consistency across researchers.
