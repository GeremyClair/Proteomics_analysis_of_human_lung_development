# Proteomics Analysis of human lung development
Data analysis of the proteomics for the paper by Geremy Clair et al.

# Code requirements
The code was run using [R](https://cloud.r-project.org) v.4.2.0 on [Rstudio](https://rstudio.com) v1.2.5033; 
Most of the packages employed were used in their last version from CRAN or Bioconductor
For the two following packages RomicsProcessor and PmartR those can be installed using the following steps:

- The installation of [Devtools](https://cran.r-project.org/web/packages/devtools/index.html)

- the package[RomicsProcessor v.1.0.0](https://github.com/PNNL-Comp-Mass-Spec/RomicsProcessor/blob/master/RomicsProcessor_1.0.0.tar.gz) RomicsProcessor is an R package that can be used to analyze omics data. The package provides a structured R object to store the data, allowing for reproducible data analysis. The package also supports creating analytical pipelines from previously processed objects and applying these pipeline to other objects. This allows for rapid development and reuse of bioinformatics methods.

- The package [PmartR](https://github.com/pmartR/pmartR])

# Folders
This repository contain in each folder the code employed to perform various analysis that were perform for the manuscript, the supplementary data contains the files generated and formatted

# Data origin
The data used for this analysis was deposited on and freely available at ProteomeXchange data repository, ProteomeXchangeID: PXD020798 and MassIVE data repository, MassIVE ID: MSV000085929.
TMT labelled data was pre processed using the search engine [MS-GF+](https://github.com/MSGFPlus/msgfplus) and the TMT reporter was extracted using [MASIC](https://github.com/PNNL-Comp-Mass-Spec/MASIC/)
Label free data was preprocessed using [MaxQuant(v1.6.0.16)] (https://www.maxquant.org/).

Written by @GeremyClair, for the Department of Energy (PNNL, Richland, WA) \
E-mail: geremy.clair@pnnl.gov or proteomics@pnnl.gov \
Website: https://omics.pnl.gov/ or https://panomics.pnnl.gov/

Other authors of the code include Lisa Bramer @lmbramer, Harsh Bhotika, and Soumyaroop Bhattacharya

# License

This code is licensed under the 2-Clause BSD License; 
you may not use this file except in compliance with the License.  You may obtain 
a copy of the License at https://opensource.org/licenses/BSD-2-Clause

Copyright 2021 Battelle Memorial Institute

