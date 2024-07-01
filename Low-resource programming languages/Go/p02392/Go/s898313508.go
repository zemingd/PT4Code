package main 

import (
    "bufio"
    "fmt"
    "os"
    )
    
    var r = bufio.NewReader(os.Stdin)
    
    func main() {
        var a int
        var b int 
        var c int
        fmt.Fscan(r, &a, &b, &c)
        
        if (a < b && b < c) {
            fmt.Println("Yes")
        } else {
            fmt.Println("No")
        }
    }
