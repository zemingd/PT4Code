package main

import "fmt"

func main(){
  var a, b, c int
  fmt.Scan(&a, &b)
  var l []int
  for i := 1; a >= i * i ; i++ {
    if a % i == 0 && b % i == 0 {
      l = append(l, i)
    }
  }
  for i := 0; i < len(l); i++ {
    if sosu(l[i]) {
      c++
    }
  }
  fmt.Println(c)
}

func sosu(n int) bool {
  if n == 1 {
    return true
  }
  for i := 2; n >= i*i; i++{
    if n % i == 0 {
      //fmt.Println(n, i)
      return false
    }
  }
  return true
}
