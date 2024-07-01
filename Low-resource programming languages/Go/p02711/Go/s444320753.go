package main

import (
	"fmt"
	"strings"
)

func main() {
	var n string
	fmt.Scan(&n)
	if strings.Contains(n, "7") {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
