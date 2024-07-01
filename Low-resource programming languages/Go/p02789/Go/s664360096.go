package main

import (
	"fmt"
)

func main() {
	var n,m int
	fmt.Scan(&n,&m)
	
	judge := ""
	if n == m {
		judge = "Yes"
	} else {
		judge = "No"
	}
  fmt.Println(judge)
}