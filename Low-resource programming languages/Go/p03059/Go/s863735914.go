package main

import (
  "fmt"
)

func main() {
  var (
    a,b,t,tmp int
      )
  fmt.Scan(&a,&b,&t)
  tmp = t / a
  fmt.Println(b * tmp)
}
