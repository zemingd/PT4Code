package main

import (
  "fmt"
  "os"
)

func main() {
  switch os.Args[1] {
  case "SUN":
    fmt.Println("7")
  case "MON":
    fmt.Println("6")
  case "TUE":
    fmt.Println("5")
  case "WED":
    fmt.Println("4")
  case "THU":
    fmt.Println("3")
  case "FRI":
    fmt.Println("2")
  case "SAT":
    fmt.Println("1")
  default:
    return
  }
}