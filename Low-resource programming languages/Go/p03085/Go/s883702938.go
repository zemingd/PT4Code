package main

import {
  "fmt"
  //"os"
}

func main(){
  var b string
  fmt.Scan(&b)
  //fmt.Fscan(os.Stdin, &b)
  
  switch b{
    case "A":
    fmt.Print("T")
    case "T":
    fmt.Print("A")
    case "G":
    fmt.Print("C")
    case "C":
    fmt.Print("G")
  }
}
  
  