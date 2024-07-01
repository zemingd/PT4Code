package main

import "fmt"

func main() {
  var n int
  _, err := fmt.Scanf("%d", &n)
  if err != nil {
    panic("error")
  }

  s := map[string]int{
    "AC":  0,
    "WA":  0,
    "TLE": 0,
    "RE":  0,
  }

  for i := 0; i < n; i++ {
    var cs string
    _, err := fmt.Scanf("%s", &cs)
    if err != nil {
      panic("error2")
    }
    if cs == "AC" {
      s["AC"] = s["AC"] + 1
    } else if cs == "WA" {
      s["WA"] = s["WA"] + 1
    } else if cs == "TLE" {
      s["TLE"] = s["TLE"] + 1
    } else if cs == "RE" {
      s["RE"] = s["RE"] + 1
    }
  }

  fmt.Printf("AC x %d\n", s["AC"])
  fmt.Printf("WA x %d\n", s["WA"])
  fmt.Printf("TLE x %d\n", s["TLE"])
  fmt.Printf("RE x %d\n", s["RE"])
}
~