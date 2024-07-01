package main

import "fmt"

func main() {
  var a,b,c,k int
  fmt.Scan(&a,&b,&c,&k)
  switch {
    case a >= k:
    fmt.Println(k)
    case a+b >= k && a < k:
    fmt.Println(a)
    case k >= a+b:
    fmt.Println(a+b-c)
  }
}