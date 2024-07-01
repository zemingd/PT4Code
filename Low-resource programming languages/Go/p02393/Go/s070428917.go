package main

import (
    "fmt"
    "bufio"
    "os"
)
var r = bufio.NewReader(os.Stdin)

func main(){
    var a, b, c int
    fmt.Fscan(r, &a, &b, &c)
    if a <= b && b <= c {
        fmt.Printf("%v %v %v\n",a,b,c)
    } else if a <= c && c <= b {
        fmt.Printf("%v %v %v\n",a,c,b)
    } else if b <= a && a <= c {
        fmt.Printf("%v %v %v\n",b,a,c)
    } else if b <= c && c <= a {
        fmt.Printf("%v %v %v\n",b,c,a)
    } else if c <= a && a <= b {
        fmt.Printf("%v %v %v\n",c,a,b)
    } else {
        fmt.Printf("%v %v %v\n",c,b,a)
    }
}

