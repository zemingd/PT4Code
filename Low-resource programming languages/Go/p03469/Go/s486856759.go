package main

import (
  "fmt"
)

func main() {
  var S string
  fmt.Scan(&S)

  OtherS := S[4:]
  fmt.Println("2018" + OtherS)
}