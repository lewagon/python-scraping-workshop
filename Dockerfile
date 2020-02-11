FROM jupyter/base-notebook:notebook-6.0.0

RUN pip install pandas numpy matplotlib beautifulsoup4 jupyter-offlinenotebook

# ./work is found inside official jupyter images, we avoid unnecessary nesting
RUN rm -rf ./work

COPY --chown=1000:100 ./scraping_workshop.ipynb .
