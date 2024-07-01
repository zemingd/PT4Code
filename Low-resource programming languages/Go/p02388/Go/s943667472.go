package main

import(
     "fmt"
     "bufio"
     "os"
)

var r = bufio.NewReader(os.Stdin)

func main(){
    var x int 
    fmt.Fscan(r, &x)
    
     ans :=x*x*x
     
     fmt.Println(ans)
}
