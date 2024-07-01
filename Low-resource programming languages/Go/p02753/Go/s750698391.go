package main

import(
  "fmt"
)

func main() {
  var x string
  fmt.Scan(&x)
  if x[:1] != x[1:2] {
    fmt.Print("Yes")
  }else if x[:1] != x[2:] {
    fmt.Print("Yes")
  }else {
    fmt.Print("No")
  }
}
