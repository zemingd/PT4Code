package main

import . "fmt"

func main() {
  var a,b,x int
  Scan(&a,&b,&x)
  if x < a || (a+b) < x {
    Println("NO")
  } else {
    Println("YES")
  }
}
