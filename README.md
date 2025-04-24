# workshop-tfroxs
### by RoxsRoss

![JavaScript](https://img.shields.io/badge/-JavaScript-F7DF1E?style=for-the-badge&logo=JavaScript&logoColor=black)
![Node.js](https://img.shields.io/badge/-Node.js-339933?style=for-the-badge&logo=node.js&logoColor=white)
![HTML5](https://img.shields.io/badge/-HTML5-E34F26?style=for-the-badge&logo=html5&logoColor=white)
![Terraform](https://img.shields.io/badge/terraform-7B42BC?logo=terraform&logoColor=white&style=for-the-badge)
![VSCode](https://img.shields.io/badge/Visual_Studio_Code-0078D4?style=for-the-badge&logo=visual%20studio%20code&logoColor=white)
![Kubernetes](https://img.shields.io/badge/kubernetes-326CE5?logo=kubernetes&logoColor=white&style=for-the-badge)
![Azure](https://img.shields.io/badge/azure-0078D4?logo=microsoft-azure&logoColor=white&style=for-the-badge)
![AWS](https://img.shields.io/badge/Amazon_AWS-232F3E?style=for-the-badge&logo=amazon-aws&logoColor=white)
![GCP](https://img.shields.io/badge/Google_Cloud-4285F4?style=for-the-badge&logo=google-cloud&logoColor=white)
![Docker](https://img.shields.io/badge/docker-2496ED?logo=docker&logoColor=white&style=for-the-badge)
![Python](https://img.shields.io/badge/python-3776AB?logo=python&logoColor=white&style=for-the-badge)
![Golang](https://img.shields.io/badge/Go-00ADD8?style=for-the-badge&logo=go&logoColor=white)
![GitHub Actions](https://img.shields.io/badge/GitHub_Actions-2088FF?style=for-the-badge&logo=github-actions&logoColor=white)
![GitLab](https://img.shields.io/badge/GitLab-330F63?style=for-the-badge&logo=gitlab&logoColor=white)
![Jenkins](https://img.shields.io/badge/Jenkins-D24939?style=for-the-badge&logo=Jenkins&logoColor=white)
![TeamCity](https://img.shields.io/badge/TeamCity-000000?style=for-the-badge&logo=TeamCity&logoColor=white)

---

# 🌱 **Primer Set de Desafíos Prácticos con Terraform**

Este conjunto de actividades está diseñado para introducirte al mundo de la **Infraestructura como Código (IaC)** de una manera práctica, simple y con resultados visibles desde el primer día. ¡Aquí comienza tu camino como DevOps!

---

## 🎯 **¿Qué vas a lograr?**

- **Dominar Terraform** para automatizar tareas comunes de infraestructura en la nube.
- **Desplegar aplicaciones en contenedores** utilizando Docker y Terraform.
- **Simular servicios de AWS** como **S3** y **DynamoDB** de manera local con **LocalStack**.
- **Adoptar buenas prácticas** de estructura de archivos, modularización y reutilización de código.

---

## 💡 **Motivación**

Terraform no es solo una herramienta, es una **mentalidad de organización y escalabilidad**. Con este set de desafíos, aprenderás a escribir y gestionar infraestructura como si fuera código de aplicación. No solo verás resultados desde el primer commit, sino que también te prepararás para asumir roles clave en proyectos DevOps. ¡Comencemos a crear y automatizar como verdaderos DevOps!

---

# 🛠 **Desafíos Terraform Nivel 100**

A continuación, encontrarás tres desafíos prácticos que te ayudarán a iniciarte en el mundo de Terraform utilizando Docker, LocalStack y AWS DynamoDB.

---

## 🚀 **Docker Terraform Helloworld**
**Ruta**: `./terraform-labs/docker-terraform-helloworld`

### **Objetivo**:  
Automatizar la construcción y ejecución de un contenedor Docker con una aplicación Node.js real utilizando Terraform.

### **Stack**:  
Terraform + Docker

**Repositorio base**: [helloworld-demo-node](https://github.com/dockersamples/helloworld-demo-node)

### **Pasos**:
1. Clonar el repositorio `helloworld-demo-node`.
2. Usar el proveedor `kreuzwerker/docker` en Terraform.
3. Crear un recurso `docker_image` desde el Dockerfile clonado.
4. Crear un recurso `docker_container` que exponga el puerto 80 al 8080.
5. Definir variables para la imagen, el contenedor y los puertos.
6. Mostrar los outputs: URL del contenedor y estado de ejecución.

### **Estructura sugerida**:
```bash
docker-terraform-helloworld/
├── main.tf
├── variables.tf
├── outputs.tf
└── helloworld-demo-node/   # Clonado desde GitHub
```

### **Validación**:
Accede a [http://localhost:8080](http://localhost:8080) y verifica que se muestre:
```
Hello from Docker!
```

---

## 🏬 **Localstack S3 Ecommerce**
**Ruta**: `./terraform-labs/localstack-s3-ecommerce`

### **Objetivo**:  
Simular el hosting de una página web estática de e-commerce en **S3** utilizando **LocalStack** y **Terraform**.

### **Stack**:  
Terraform + LocalStack + S3

**Plantilla base**: [Start Bootstrap E-commerce Template](https://startbootstrap.com/templates/ecommerce)

### **Pasos**:
1. Descargar la plantilla de e-commerce y colocarla en `web/`.
2. Configurar el proveedor de AWS apuntando a **LocalStack** (`localhost:4566`).
3. Crear un bucket de S3 con configuración de sitio web.
4. Subir los archivos HTML/CSS/JS utilizando `aws_s3_bucket_object` y `for_each`.
5. Usar `mime_types` en `variables.tf` para especificar los tipos de archivo.
6. Mostrar la URL del sitio web con el output correspondiente.

### **Estructura sugerida**:
```bash
localstack-s3-ecommerce/
├── main.tf
├── provider.tf
├── variables.tf
├── outputs.tf
└── web/
    ├── index.html
    ├── css/
    ├── js/
    └── ...otros assets
```

### **Validación**:
Abre en tu navegador:
```
http://localhost:4566/ecommerce-site/index.html
```

---

## 📝 **AWS DynamoDB Items**
**Ruta**: `./terraform-labs/aws-dynamodb-items`

### **Objetivo**:  
Crear una tabla en **DynamoDB** y precargarla con datos (ítems) utilizando **Terraform**.

### **Stack**:  
Terraform + AWS DynamoDB

### **Pasos**:
1. Configurar el proveedor de AWS (puedes usar claves o un perfil).
2. Crear una tabla `aws_dynamodb_table` con una **hash key** `id` y modo **PAY_PER_REQUEST**.
3. Declarar los ítems como un `jsonencode()` en un local variable.
4. Crear los ítems utilizando `aws_dynamodb_table_item` y `for_each`.
5. Mostrar los outputs: nombre de la tabla y su ARN.

### **Estructura sugerida**:
```bash
aws-dynamodb-items/
├── main.tf
├── provider.tf
├── variables.tf
├── outputs.tf
```

### **Validación**:
Entra en la consola de AWS y ve a:
```
Consola > DynamoDB > Items
```

Deberías ver algo como esto:
```json
{ "id": "001", "name": "Ada", "score": 95 }
{ "id": "002", "name": "Linus", "score": 89 }
```

---

¡Disfruta de estos desafíos y empieza a crear tu infraestructura como código con Terraform!




> _"DevOps es el arte de la colaboración y la automatización, donde la innovación y la confiabilidad se unen para crear un camino continuo hacia el éxito."_

🔥🔥🔥🔥

<img width="80%" src="https://roxsross-linktree.s3.amazonaws.com/295-full-website-banner-transparent-white.png">

## Contactos

Me puedes encontrar en las siguientes plataformas:

- [Hashnode](https://blog.295devops.com)
- [Dev.to](https://dev.to/roxsross)
- [Twitter](https://twitter.com/roxsross)
- [LinkedIn](https://www.linkedin.com/in/roxsross/)
- [Instagram](https://www.instagram.com/roxsross/)
- [YouTube](https://www.youtube.com/channel/UCa-FcaB75ZtqWd1YCWW6INQ)
