# fwnow

A simple file watcher. This needs to work now!

## Requirements

* **inotify-tools**: automatically installed

## Usage

* **Bit.ly mirror**

* Monitoring C files:

```bash
curl -sL bit.ly/3mrE5Bp | bash -s '*.c' 'gcc -o app main.c ; ./examples/app'
```

* Monitoring Multiple file extensions:

```bash
curl -sL bit.ly/3mrE5Bp | bash -s '*.{js,html}' 'node app.js'
```

* Monitoring folder:

```bash
curl -sL bit.ly/3mrE5Bp | bash -s 'examples/' 'node app.js'
```

## Tests

```bash
cat fwnow | bash -s 'examples/*.c' 'gcc -o examples/app examples/main.c ; ./examples/app'
```