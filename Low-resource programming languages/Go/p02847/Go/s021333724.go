package main

import (
  "fmt"
  "os"
)

func main() {
  switch os.Args[1] {
  case "SUN":
    fmt.Print("7")
  case "MON":
    fmt.Print("6")
  case "TUE":
    fmt.Print("5")
  case "WED":
    fmt.Print("4")
  case "THU":
    fmt.Print("3")
  case "FRI":
    fmt.Print("2")
  case "SAT":
    fmt.Print("1")
  default:
    return
  }
}