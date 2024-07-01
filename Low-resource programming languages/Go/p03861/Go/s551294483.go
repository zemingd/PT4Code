package main

import "fmt"

func main(){
  var a uint64
  var b uint64
  var x uint64
  var p uint64
  var q uint64
  fmt.Scan(&a)
  fmt.Scan(&b)
  fmt.Scan(&x)
  p = b / x
  q = a / x
  fmt.Println(p-q)
}
      
