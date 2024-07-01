package main

import (
	"fmt"
	"strings"
)

func main() {
	var s string
	fmt.Scan(&s)
	if len(s) != 1{
		return
	}
	if strings.ToLower(s) == s{
		fmt.Println("a")
	}else{
		fmt.Println("A")
	}
}