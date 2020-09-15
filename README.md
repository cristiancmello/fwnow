# fwnow

A simple file watcher. This needs to work now!

## Requirements

* **inotify-tools**: automatically automatically

## Usage

* **Bit.ly mirror**

* Monitoring C files:

```bash
curl -sL <mirror> | bash -s '*.c' 'gcc -o app main.c ; ./examples/app'
```

* Monitoring Multiple file extensions:

```bash
curl -sL <mirror> | bash -s '*.{js,html}' 'node app.js'
```

* Monitoring folder:

```bash
curl -sL <mirror> | bash -s 'examples/' 'node app.js'
```

## Tests

```bash
cat fwnow | bash -s 'examples/*.c' 'gcc -o examples/app examples/main.c ; ./examples/app'
```