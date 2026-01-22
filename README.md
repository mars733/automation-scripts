# Automation Scripts

A collection of small automation scripts to speed up development tasks.

## 📂 Structure
automation-scripts/ 
├── c/ 
│   └── c.sh 
├── README.md 
└── .gitignore

## 🧰 C Automation Script

### `c.sh`
Automates C development workflow:
- Creates a `.c` file with boilerplate
- Opens it in an editor
- Compiles using `clang`
- Runs the executable automatically

### Usage
```bash
bash c/c.sh filename

##example
bash c/c.sh hello

##This will:
 - Create hello.c (if missing)
 - Open it for editing
 - Compile it 
 - Run ./hello

### Requirements
 - clang
 - bash
 - nano (or any editor via $EDITOR)

###🚀 Future Plans
More C utilities
Bash helper scripts
Python automation tools

#Feel free to fork, improve, and contribute 🙂 
