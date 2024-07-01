package main

import "fmt"

func main(){
  var a uint64
  var b uint64
  var x uint64 > 0
  var n uint64
  var count uint64 = 0
  fmt.Scan(&a)
  fmt.Scan(&b)
  fmt.Scan(&x)
  n = a
  for n <= b {
    if n % x == 0 {
      count++
    }
  }
  fmt.Println(count)
}
      