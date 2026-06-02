# 🏥 Sistema de Agendado de Citas Médicas - Base de Datos

Repositorio general: https://github.com/gabrielhuav/DB-Coursework-2026-2

[cite_start]Sistema web para el agendado y gestión de citas médicas en un entorno hospitalario[cite: 8, 9]. [cite_start]Este proyecto fue desarrollado como la "Práctica 1: Modelo Entidad-Relación" [cite: 1] [cite_start]para la carrera de Ingeniería en Inteligencia Artificial (Grupo 3BV1) de la ESCOM - IPN[cite: 3].

## 🛠️ Tecnologías
- **Backend:** Java, Apache Netbeans
- **Base de Datos:** PostgreSQL
- **Frontend:** HTML, CSS (Bootstrap 5) y JavaScript vanilla (Fetch API)
- **Despliegue:** Save in cloud

*Nota: Para levantar el entorno de desarrollo local, se recomienda inicializar la base de datos relacional de PostgreSQL mediante un contenedor de Docker y posteriormente ejecutar los scripts SQL adjuntos en las capturas.*

## 📢 Usuarios y Funcionalidades Principales
[cite_start]El sistema está respaldado por un modelo relacional compuesto por 7 entidades principales[cite: 25, 26], diseñadas para cubrir los siguientes requerimientos:

- [cite_start]**Pacientes:** Pueden agendar y consultar sus citas médicas[cite: 10, 11]. [cite_start]El sistema almacena su nombre, apellidos, email, contraseña y nivel de acceso[cite: 17, 18].
- [cite_start]**Médicos:** Atienden a los pacientes basándose en su especialidad y horario asignado[cite: 12, 13]. [cite_start]Cuentan con una sesión personal para visualizar sus consultas y emitir la receta médica[cite: 20].
- [cite_start]**Administrador:** Rol encargado de gestionar la plantilla de doctores, los consultorios disponibles y las especialidades del hospital[cite: 14, 15].
- [cite_start]**Gestión de Citas:** Cada registro de cita vincula de manera relacional la situación médica, hora, fecha, consultorio, especialidad, paciente, médico y receta[cite: 19, 20].
- [cite_start]**Mensajería Interna:** Módulo que permite la comunicación entre usuarios guardando fecha, hora, remitente, destinatario y contenido del mensaje[cite: 21, 22].

## 👨‍👩‍👧‍👦 Integrantes del equipo
- [cite_start]Flores Vargas Augusto Hazel [cite: 4]
- [cite_start]Hernández Zúñiga Andrea Verónica [cite: 5]
- [cite_start]Linares Medina Fernando Agustin [cite: 6]
- [cite_start]Angeles Salinas Daniel Alejandro [cite: 7]

<details>
<summary>🖼️ Capturas de la página</summary>
<br>

| | |
|---|---|
| <img loading="lazy" width="1800" src="https://github.com/user-attachments/assets/7e617b84-42e8-49f9-8907-274c34e515bd" alt="Vista principal del Sistema de Citas" /><br>*Vista principal del Sistema de Citas* | |
| <img loading="lazy" width="1190" src="https://github.com/user-attachments/assets/cfd6fdaf-692a-43a2-83fd-e357257a4117" alt="Perfil de usuario" /><br>*Perfil de usuario* | <img loading="lazy" width="1874" src="https://github.com/user-attachments/assets/c40df635-46ac-4868-8750-0b76bc2a32ce" alt="Bandeja de mensajería" /><br>*Bandeja de mensajería* |

</details>

<details>
<summary>🖼️ Capturas del proyecto (Base de Datos)</summary>
<br>

| | |
|---|---|
| <img width="1214" height="851" alt="image" src="https://github.com/user-attachments/assets/4760ff18-0f5d-414c-ae49-2f6df1392622" />
<br>*Modelo Entidad-Relación Extendido* | |
| <img width="1190" height="1293" alt="image" src="https://github.com/user-attachments/assets/0b64e937-01b8-4f16-be8b-e4d9c297e45f" />
<br>*Modelo Relacional* | <img width="1065" height="798" alt="image" src="https://github.com/user-attachments/assets/0c46efe9-ed53-46b1-ab91-9c6c1b1a0faa" /><img width="1135" height="798" alt="image" src="https://github.com/user-attachments/assets/b3a5b72d-1bc2-4be0-a3df-f07b73199082" />
<br>*Código SQL* |

</details>
