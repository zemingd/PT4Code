package main

import (
    "bufio"
    "fmt"
    "os"
    "strconv"
)

func main() {
    stdin := bufio.NewScanner(os.Stdin)
    stdin.Scan()
    x, _ := strconv.Atoi(stdin.Text())
    fmt.Println(x * x * x)
}
