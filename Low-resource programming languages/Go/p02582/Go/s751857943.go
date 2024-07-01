package main

import (
  "fmt"
)

func main() {
  var s  string 
  fmt.Scanf("%s", &s)
  
  ans := 0
  if s == "SSS" {
    ans = 0
  }
  if s == "RSS" {
    ans = 1
  }
  if s == "SRS" {
    ans = 1
  }
  if s == "SSR" {
    ans = 1
  }
  if s == "RRS" {
    ans = 2
  }
  if s == "SRR" {
    ans = 2
  }
  if s == "RSR" {
    ans = 1
  }
  if s == "RRR" {
    ans = 3
  }
  
  fmt.Printf("%d\n", ans)
}