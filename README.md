# plana-task1

Hello Dear,
Do follow the below step to start my app:

### Installation

1- Clone my repo to your local environment.
   ```sh
   git clone https://github.com/meisamhms/plana-task1.git
   ```

2- To deploy my project as a single container:
   ```sh
   cd plana-task1
   docker build -t plana-task1:latest .
   docker run -d -rm -p5000:5000 plana-task1:latest
   curl http://127.0.0.1:5000
   ```

3- To deploy my project in your Kubernetes infrastructure:
   ```sh
   kubctl apply -f Deployment.yaml
   ```
