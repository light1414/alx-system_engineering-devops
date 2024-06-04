#!/usr/bin/python3
"""Script to request employee ID from an API"""

import requests
import json
from sys import argv


def main():
    """Requests data from an API"""
    users = requests.get("https://jsonplaceholder.typicode.com/users").json()
    todo = requests.get("https://jsonplaceholder.typicode.com/todos").json()
    data = {}
    for user in users:
        data[user.get('id')] = [{
            "username": user.get('username'),
            "task": task.get('title'),
            "completed": task.get('completed')
        } for task in todo if task.get('userId') == user.get('id')]
    with open("todo_all_employees.json", "w") as jsonfile:
        json.dump(data, jsonfile)


if __name__ == "__main__":
    main()
