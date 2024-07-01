package main

import "fmt"

func main() {
  var k, x int

  fmt.Scan(&k, &x)

  var i int
  for i=x-(k-1); i < x+k-1; i++ {
    fmt.Printf("%d ", i)
  }
  fmt.Println(i)
}
