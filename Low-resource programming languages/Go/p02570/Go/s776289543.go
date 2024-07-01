package main

import "fmt"

func main() {
	var D, T, S float64
	fmt.Scan(&D, &T, &S)

  var time = (D / S)

  if T >= time {
    fmt.Println("Yes")
  }else{
    fmt.Println("No")
  }
}