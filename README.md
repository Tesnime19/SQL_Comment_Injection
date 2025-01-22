# SQL Comment Injection Demonstration with ngrok

## Description
This project demonstrates an SQL Injection attack using comments (`--`) to bypass authentication in a Flask web application. With the addition of ngrok, the application can be shared over the internet for remote testing.

## Prerequisites
- Python 3.12 or higher
- ngrok (download from https://ngrok.com)

## Installation
1. Clone the repository:
    ```bash
    git clone https://github.com/yourusername/SQL_Comment_Injection.git
    cd SQL_Comment_Injection
    ```

2. Install the required Python dependencies:
    ```bash
    pip install -r requirements.txt
    ```

3. Download and install ngrok:
    - Visit https://ngrok.com, sign up, and download ngrok.
    - Place the ngrok binary in the root directory of this project.

## Usage
1. Run the setup script:
    ```bash
    ./ngrok_setup.sh
    ```

2. Access the application:
    - ngrok will generate a public URL (e.g., `http://1234abcd.ngrok.io`).
    - Share this URL with others to test the SQL Injection vulnerability.

3. Test the vulnerability:
    - Enter `admin' --` as the username and leave the password field blank.
    - This will bypass the authentication and log you in as the admin.

## Prevention
To fix this vulnerability:
1. Use parameterized queries or an ORM (e.g., SQLAlchemy).
2. Validate and sanitize all user inputs.
3. Avoid constructing SQL queries dynamically with user data.
