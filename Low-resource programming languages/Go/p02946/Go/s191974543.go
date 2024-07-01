package main

import "fmt"

func main() {
  var k, x int
  fmt.Scanf("%d %d", &k, &x)
  min := x - (k-1)
  max := x + (k-1)
  for i:= min; i <=max; i++ {
  fmt.Printf("%d", i)
    if (i != max) {
      fmt.Print(" ")
    }
  }
}