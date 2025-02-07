import os

def main():
    log_message = os.getenv('LOG_MESSAGE')
    print(f'V2.1: Log Message from python: {log_message}')

if __name__ == "__main__":
    main()
