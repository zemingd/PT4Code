package main

import (
    "bufio"
    "fmt"
    "os"
)

var r = bufio.NewReader(os.Stdin)

func main() {
    var a,b,c int
    fmt.Fscan(r,&a)
    fmt.Fscan(r,&b)
    fmt.Fscan(r,&c)
    if a <= b&&b <= c{
        fmt.Println(a, b, c)
    }else if a <= c&&c <= b{
        fmt.Println(a, c, b)
    }else if b <= a&&a <= c{
        fmt.Println(b, a, c)
    }else if b <= c&&c <= a{
        fmt.Println(b, c, a)
    }else if c <= b&&b <= a{
        fmt.Println(c, b, a)
    }else if c <= a&&a <= b{
        fmt.Println(c, a, b)
    }
}

