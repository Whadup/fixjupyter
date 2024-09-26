FROM continuumio/anaconda3
ADD run.sh
RUN chmod ugo+x run.sh
CMD ["run.sh"]