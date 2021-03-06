# TAG=v0.1.1 && docker build --tag consideratio/datascience-notebook-enhanced:${TAG} . && docker push consideratio/datascience-notebook-enhanced:${TAG}
FROM jupyter/datascience-notebook:59b402ce701d
# Get the latest image tag at:
# https://hub.docker.com/r/jupyter/datascience-notebook/tags/
# Inspect the Dockerfile at:
# https://github.com/jupyter/docker-stacks/tree/master/datascience-notebook/Dockerfile

# install additional package...
USER root
RUN sudo apt-get update \
 && sudo apt-get install -y \
        openssl \
        vim

USER $NB_UID
RUN pip install -q nbgitpuller
