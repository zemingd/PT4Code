package main

import (
  "fmt"
)

func main () {
  var small, large, divider, count int
  fmt.Scan(&small, &large, &divider)
  for i := small; i <= large; i++{
    if i % divider == 0{
      count++
    }
  } 
  fmt.Printf("%d", count)
}