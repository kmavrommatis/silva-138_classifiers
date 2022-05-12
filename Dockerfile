FROM quay.io/qiime2/core:2022.2

RUN conda install -c conda-forge -c bioconda -c qiime2 -c defaults xmltodict
RUN pip install git+https://github.com/bokulich-lab/RESCRIPt.git

RUN qiime dev refresh-cache

