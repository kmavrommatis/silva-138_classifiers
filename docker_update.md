### 


Run the docker compose file to generate a new docker image with RESCRIPt

```
docker compose -f docker-compose.yml build qiime
```

In the commands in the other pages replace 
`qiime` with `docker run -ti -v $PWD:$PWD -w $PWD quay.io/qiime2/rescript:2022.2`

e.g.

```
qiime rescript get-silva-data --p-version '138' --p-target 'SSURef_NR99' --p-include-species-labels --o-silva-sequences silva-138-ssu-nr99-seqs.qza --o-silva-taxonomy silva-138-ssu-nr99-tax.qza
```

will now become

```
docker run -ti -v $PWD:$PWD -w $PWD quay.io/qiime2/rescript:2022.2 qiime rescript get-silva-data --p-version '138' --p-target 'SSURef_NR99' --p-include-species-labels --o-silva-sequences silva-138-ssu-nr99-seqs.qza --o-silva-taxonomy silva-138-ssu-nr99-tax.qza

```
