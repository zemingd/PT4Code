package main

import "fmt"

func main() {
  var a, b int
  fmt.Scanf("%d %d", &a, &b)
  plus := a + b
  minus := a -b
  multi := a * b
  var max int
  if (plus > minus) {
    if (plus > multi) {
      max = plus
    } else {
      max = multi
    }
  } else {
    if (minus > multi) {
    	max = minus
    } else {
      max = multi
    }
  }
  fmt.Printf("%d\n", max)
}