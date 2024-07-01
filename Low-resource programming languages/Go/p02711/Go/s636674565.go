package main

import (
	"fmt"
	"strings"
)

func main() {
	var n string
	fmt.Scan(&n)
	result := strings.Contains(n, "7")
	if result {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
