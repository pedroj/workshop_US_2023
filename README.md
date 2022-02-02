---
title: "01-Introduction"
author: Pedro Jordano       
        - Estación Biológica de Doñana, CSIC
        -Sevilla, Spain
date: March 22, 2019; December 22, 2021
output:
  html_document:
    fig_width: 8
    fig_height: 6
    includes:
        after_body: footer.html
bibliography: ebook.bib
csl: arees.csl
---

----------------------
# Workshop Universidad de Sevilla. Feb 2022.
### Pedro Jordano

Materials for the US 2022 Course "*Biodiversidad y evolución de redes complejas de interacciones entre especies*".

A short introduction to the analysis of complex ecological networks.

<img src="./images/coverimage2.png" alt="A plant-animal interaction network" width="650"/>



## Introduction {#intro}

A network is a representation of multiple links among interconnected elements. Networks are everywhere, simply because we live an inteconnected world. 

Network science is a broad approach to research and scholarship that uses a relational lens to study and understand biological, physical, social, and informational systems. The primary tool for network scientists is network analysis, the set of methods that are used to (1) visualize networks, (2) describe their specific characteristics and structure, and the details about the individual nodes, links, and subgroups within the networks, and (3) build mathematical and statistical models of network structure and dynamics.     

Network ecology deals with three main aspects of biodiversity: 1) visualize the complexity of interactions within ecosystems, among individual organisms, among species, or among higher taxonomic entities; 2) map ecological functions on the links; 3) analyze and test network patterns; and 4) fit network models aiming to understand the mechanistic bases of network complexity. Network tools are thus extremely useful for ecologists, because visualization of complexity is a first step to its understanding.     

This is a short workshop where I aim to present a simple overview of the analysis of ecological networks in [`R`](https://www.r-project.org), based on my own experience when analyzing network data and the experience of others that I found particularly useful. In most cases I use my own data and examples, all of them available in [my GitHub repository](https://github.com/pedroj) or [our lab repository](https://github.com/PJordano-Lab). A general introduction to ecological networks, with emphasis on mutualistic interactions is [@Bascompte:2014to]; recent, more general approaches to the analysis of complex neworks in `R` are summarized in  [@Kolaczyk2014a]. Further recent work has focused on graphical representation and analysis of ecological networks [@Pocock:2016cc,@Farine2017,@Delmas2018].

## References
