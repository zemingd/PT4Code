package main

import (
    "bufio"
    "fmt"
    "os"
)

var r = bufio.NewReader(os.Stdin)

func main() {
    var x int
    fmt.Fscan(r, &x)
    h := x / 3600
    m := x % 3600 / 60
    s := x % 60
    fmt.Print(h,":",m,":",s,"\n")
}
