package main

import (
    "fmt"
    "bufio"
    "os"
)

var r = bufio.NewReader(os.Stdin)

func main() {
    var x int
    fmt.Fscan(r, &x)
    x3 := x * x * x
    fmt.Println(x3)
}
