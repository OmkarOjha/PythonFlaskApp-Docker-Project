FROM python:3.14

WORKDIR /app

# Copy requirements first (better layer caching practice)
COPY src/requirements.txt /app/

RUN pip install --no-cache-dir -r requirements.txt

# Now copy source code
COPY src/main.py /app/main.py

ENTRYPOINT ["python", "main.py"]