package main

import (
  "fmt"
)

func main() {
  var n int
  fmt.Scan(&n)
  
  var i int = n / 1000
  var change int
  if n % 1000 == 0 {
  	change = 1000 * i - n
  } else {
    change = 1000 * ( i + 1 ) - n
  }
  
  fmt.Println(change)
}