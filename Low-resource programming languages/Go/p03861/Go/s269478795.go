package main

import "fmt"

func main(){
  var a uint64
  var b uint64
  var x uint64
  var p uint64
  var q uint64
  var i uint64 = 0
  fmt.Scan(&a, &b, &x)
  if a % x == 0 {
    i = 1
  }
  p = b / x
  q = (a-1) / x
  fmt.Println(p-q)
}