FROM continuumio/anaconda3
ADD run.sh run.sh
RUN chmod ugo+x run.sh
CMD ["run.sh"]