package main

import (
	"fmt"
)

func main() {
	var A,B int
	fmt.Scan(&A,&B)
  if B%A == 0 {
    fmt.Println(A+B)
  }else{
    fmt.Println(B-A)
  }
	return
}
