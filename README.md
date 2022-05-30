# lotuss-assignment-test

***lotuss-assignment-test*** is a repository for qa practice assignment about robot frameworks.

## Software recommendation
1. PyCharm
    * PyCharm Extension `IntelliBot`
    * Virtual Environment `pipenv`,`conda`
2. Visual Studio Code
    * VS Code Extension `Markdown Preview Enhanced`, `Robot Framework Intellisense`, `Python Extension Pack`, `Live Server`

## Installation
1. Python (Recommended version = 3.9(++))
2. Robot Framework and Libraries
```
pip install -r requirements.txt
```

Check all installed Python packages with `pip list`  or `pip freeze` commands.

The pip list command returns the list of packages in the current environment.
```
pip list
```

The pip freeze command returns as `<package-name> == <version>`.
```
pip freeze
```

## Development
#### Execute by tag
    robot -v ENV:{{env}} -v -d {{result directory}} -i {{tag_name}} testcases
#### Execute by test name
    robot -v ENV:{{env}} -d {{result directory}} -t "{{test name}}" testcases
#### Execute by test suite
    robot -v ENV:{{env}} -d {{result directory}} testcases/{{test suite name}}.robot
#### Execute all project
    robot -v ENV:{{env}} -d {{result directory}} testcases