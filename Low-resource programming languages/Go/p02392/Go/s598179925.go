package main

import (
    "fmt"
    "bufio"
    "os"
)

func main(){
    r := bufio.NewReader(os.Stdin)
    var a, b, c int
    
    fmt.Fscan(r, &a, &b, &c)
    
    if a < b && b < c {
        fmt.Println("Yes")
    } else {
        fmt.Println("No")
    }
}
