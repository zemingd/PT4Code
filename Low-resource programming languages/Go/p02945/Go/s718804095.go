package main

import "fmt"

func main(){
  var a,b int64
    fmt.Scan(&a,&b)
  pl := a+b
    mi := a-b
  x := a*b
    if pl > mi && pl > x {
        fmt.Println(pl)
    }else if mi > x && mi > pl {
        fmt.Println(mi)
    }else{
        fmt.Println(x)
    }
  }