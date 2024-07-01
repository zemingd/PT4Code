package main

import (
	"fmt"
  	"strings"
)

func main() {
	var n string
	fmt.Scan(&n)

  if i := strings.Index(n, "7"); i != -1 {
    fmt.Println("Yes")
    return
  }
  fmt.Println("No")
}