package main

import (
  	"fmt"
  	"strings"
)

func main() {
  	var N
  	var s string
  	fmt.Scan(&N,&s)
  	fmt.Println(strings.Count(s, "ABC"))
}