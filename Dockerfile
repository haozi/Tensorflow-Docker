FROM haozhi/anaconda

ARG NOTEBOOKS="/home/ubuntu/notebooks"
USER ubuntu
RUN sh ~/.upgrade_system.sh && \
    echo 'DISABLE_AUTO_UPDATE="true"' >> ~/.zshrc && \
    mkdir -p $NOTEBOOKS && sudo ln -s $NOTEBOOKS /notebooks

WORKDIR $NOTEBOOKS

CMD [ "../.conda/bin/jupyter", "lab", "--ip=0.0.0.0" ]
EXPOSE 8888
LABEL name="tensorflow" version="1.0" description="TensorFlow 2" by="haozi"
