package main

import (
  "fmt"
)

func main() {
  var h, a int 
  fmt.Scan(&h, &a)
  //余り分を先に足す
  fmt.Println((h + a - 1) / a)
}
