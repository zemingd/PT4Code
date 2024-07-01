package main

import "fmt"

func main(){
  var n, count int
  fmt.Scan(&n)
  for i := 1; i <= n;i++{
    count += i
  }
  fmt.Println(count)
}