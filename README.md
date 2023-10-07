# libextras

A C library with general purpose utility functions.

## Installation

```sh
make install
```

## Usage

1. Include the header file.

    ```c
    // main.c
    #include <extras/str.h>
    #include <stdio.h>

    int main(int argc, char const *argv[])
        return starts_with("Hello World, "Hell");
    }
    ```

2. Link the library.

    ```sh
    gcc -o main main.c -lextras
    ```
