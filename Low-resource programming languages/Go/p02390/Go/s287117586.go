package main

import(
    "bufio"
    "fmt"
    "os"
)

var r=bufio.NewReader(os.Stdin)

func main(){
    var x,h,m,s int
    fmt.Fscan(r, &x)
    
    h=x/60/60
    m=(x-h*60*60)/60
    s=x-h*60*60-m*60
    fmt.Printf("%d:%d:%d\n",h,m,s)
}
