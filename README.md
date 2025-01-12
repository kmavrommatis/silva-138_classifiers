# silva-138_classifiers
Feature Classifiers for different variable regions of Prokaryotic 16S rRNA genes.  

<br>

**Database:** [SILVA release_138 nr99 SSU](https://www.arb-silva.de/fileadmin/silva_databases/release_138/Exports/SILVA_138_SSURef_NR99_tax_silva.fasta.gz)  
**Tutorials:** QIIME 2 - [Feature Classifier](https://docs.qiime2.org/2021.4/tutorials/feature-classifier/) & [RESCRIPt](https://forum.qiime2.org/t/processing-filtering-and-evaluating-the-silva-database-and-other-reference-sequence-data-with-rescript/15494)  
**QIIME2 version:** 2022.2

<br>

### Primers (from this [file](standard_primers.md))
- **V1-V2:** 27f & 338r
- **V1-V3:** 27f & 534r
- **V3:** 341f & 518r
- **V3-V4:** 341f & 805r
- **V4:** 515f & 806r

<br>

### Install RESCRIPt in QIIME
- [Install](docker_update.md) RESCRIPt in the QIIME docker image

### Workflows with Files
- Initial [workflow](Get_silva-138&filter.md) to download and curate the SILVA DB
- Workflow for [**V1-V2** classifier](V1-V2_classifier.md)
- Workflow for [**V1-V3** classifier](V1-V3_classifier.md)
- Workflow for [**V3** classifier](V3_classifier.md)
- Workflow for [**V3-V4** classifier](V3-V4_classifier.md) 
- Workflow for [**V4** classifier](V4_classifier.md)

<br>

---

### System Configuration:  
**Processor (vCPUs):** EC2 m5.4xlarge (16)  
**RAM:** 64GB  
**Swap:** 50GB  
**TMP:** 50GB  
**OS:** Amazon Linux 2  
