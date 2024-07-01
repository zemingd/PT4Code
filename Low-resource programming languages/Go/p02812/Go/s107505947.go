package main

import (
  	"fmt"
  	"strings"
)

func main() {
  	var N int
  	var s string
  	fmt.Scan(&N,&s)
  	fmt.Println(strings.Count(s, "ABC"))
}