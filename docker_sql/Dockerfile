FROM python:3.9

RUN apt-get install wget
RUN pip install pandas sqlalchemy psycopg2

WORKDIR /app

COPY ingest_data.py ingest_data.py

ENTRYPOINT [ "python", "ingest_data.py" ]

# here we are giving entry point python and pipeline.py so we can directly move to that point 
        
# ENTRYPOINT [ "bash" ]

