import os

def main():
    log_message = os.getenv('LOG_MESSAGE')
    print(f'Log Message from python: {log_message}')

if __name__ == "__main__":
    main()