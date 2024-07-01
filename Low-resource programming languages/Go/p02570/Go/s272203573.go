package main

import "fmt"

func main() {
	var D, T, S int
	fmt.Scan(&D, &T, &S)

  var dis = (T * S)

  if dis >= D {
    fmt.Println("Yes")
  }else{
    fmt.Println("No")
  }
}