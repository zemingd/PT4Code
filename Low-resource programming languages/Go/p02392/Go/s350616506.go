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
    
    if a < b && b < c{
        fmt.Println("Yes")
    }else{
        fmt.Println("No")
    }
}

