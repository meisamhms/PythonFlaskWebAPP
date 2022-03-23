[![LinkedIn][linkedin-shield]][linkedin-url]
# plana-task1

Hello Dear,<br>
Follow the below steps to start my app:

### Installation

1- Clone my repo to your local environment.
   ```sh
   git clone https://github.com/meisamhms/plana-task1.git
   ```

2- To deploy my project as a single container <i><b>from scratch</i></b>:
   ```sh
   cd plana-task1
   docker build -t plana-task1:latest .
   docker run -d -rm -p5000:5000 plana-task1:latest
   ```
3- To deploy my project as a single container with my image:
   ```sh
   docker run -d -rm -p5000:5000 meisamhm/plana-task1:latest
   ```

4- To deploy my project in your Kubernetes infrastructure:
   ```sh
   kubctl apply -f Deployment.yaml
   ```




<!-- MARKDOWN LINKS & IMAGES -->
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-url]: https://linkedin.com/in/meisam-sharahi
