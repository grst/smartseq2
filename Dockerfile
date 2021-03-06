FROM nfcore/base:1.8
LABEL authors="grst" \
      description="Docker image containing all requirements for nf-core/smartseq pipeline"

COPY environment.yml /
RUN conda env create -f /environment.yml && conda clean -a
ENV PATH /opt/conda/envs/nf-core-smartseq-1.0dev/bin:$PATH
