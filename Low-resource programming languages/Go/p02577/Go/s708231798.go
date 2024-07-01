package main

import (
	"fmt"
	"strconv"
)

func main() {
	var n string
	fmt.Scan(&n)

  sum := 0
	for _, i := range n {
    num, _ := strconv.Atoi(string(i))
    sum += num
	}

  if sum % 9==0{
    fmt.Println("Yes")
  }else{
    fmt.Println("No")
  }
}
