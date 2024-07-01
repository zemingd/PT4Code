package main

import (
  "fmt"
)

func main() {

  var s string

  fmt.Scan(&s)

  if (s == "ABA" || s == "BAB") {
      fmt.Println("Yes")
  } else {
      fmt.Println("No")
  }

}