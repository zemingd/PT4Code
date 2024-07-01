package main

import(
    "bufio"
    "fmt"
    "os"
)

var r = bufio.NewReader(os.Stdin)

func main(){
    var S int
    fmt.Fscan(r, &S)
    
    s := S%60
    m := (S%3600)/60
    h := S/3600
    
    fmt.Printf("%v:%v:%v\n",h,m,s)
}

