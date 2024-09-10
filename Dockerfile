FROM python:3.12-alpine

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Set the working directory in the container
WORKDIR /app

# Install dependencies
COPY requirements.txt /app/
RUN pip install --no-cache-dir -r requirements.txt

# Copy the Django project into the container
COPY ./django_sample /app/

# Expose the port Django runs on
EXPOSE 8000

# Command to run Django application
CMD ["gunicorn", "--bind", "0.0.0.0:8000", "django_sample.wsgi:application"]