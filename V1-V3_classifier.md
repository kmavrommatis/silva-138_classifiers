### V1-V3 amplicons
#### Extracting V1-V3 region
_**Primers:** 27f & 534r_
```bash
qiime feature-classifier extract-reads --i-sequences silva138_noEuk_AB_seqs_uniq.qza --p-f-primer AGAGTTTGATCMTGGCTCAG --p-r-primer ATTACCGCGGCTGCTGG --p-n-jobs 12 --o-reads silva138_AB_V1-V3seqs.qza
```
_**Output:** silva138_AB_V1-V3seqs.qza

<br>

#### Dereplicating the target region
```bash
qiime rescript dereplicate --i-sequences silva138_AB_V1-V3seqs.qza --i-taxa silva138_noEuk_AB_tax_uniq.qza --o-dereplicated-sequences silva138_AB_V1-V3seqs_uniq.qza --o-dereplicated-taxa silva138_AB_V1-V3taxa_uniq.qza
```
_**Dereplicated Sequences:** silva138_AB_V1-V2seqs_uniq.qza  
_**Dereplicated Taxa:** silva138_AB_V1-V2taxa_uniq.qza

<br>

#### Classifying & evaluating with RESCRIPt
Using multiple threads increases memory usage [Ref](https://forum.qiime2.org/t/memoryerror-when-running-feature-classifer-with-pre-trained-classifier/566/3). Using 1 thread with auto reads per batch (took approx 19 hrs)
```bash
qiime rescript evaluate-fit-classifier --i-sequences silva138_AB_V1-V3seqs_uniq.qza --i-taxonomy silva138_AB_V1-V3taxa_uniq.qza --o-classifier silva138_AB_V1-V3_classifier.qza --o-observed-taxonomy silva138_AB_V1-V3_predicted_taxonomy.qza --o-evaluation silva138_AB_V1-V3_classifier_eval.qzv
```
_**Classifier:** silva138_AB_V1-V3_classifier.qza_
_**Predicted Taxonomy:** silva138_AB_V1-V3_predicted_taxonomy.qza 
_**Evaluation:** silva138_AB_V1-V2_classifier_eval.qzv  
