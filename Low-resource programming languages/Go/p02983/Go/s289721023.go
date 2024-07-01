package main

import (
  "fmt"
  _ "sort"
  _ "math"
)

func main() {
  var a,b int
  fmt.Scan(&a,&b)

  if b - a >= 2019 {
    fmt.Printf("0\n")
    return
  }

  r := 2019

  for i:=a; i<=b; i++ {
    for j:=i+1; j<=b; j++ {
      t := i*j % 2019
      if r > t {
        r = t
      }
    }
  }


  fmt.Printf("%d\n", r)
}
