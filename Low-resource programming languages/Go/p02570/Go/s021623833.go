package main

import "fmt"

func main() {
	var D, T, S double
	fmt.Scan(&D, &T, &S)
  
  var time double = T / S
  
  if T <= S{
    fmt.Println("Yes")
  }else{
    fmt.Println("No")
  }
}