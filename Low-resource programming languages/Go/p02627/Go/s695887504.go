package main

import (
	"fmt"
	"strings"
)

func main() {
	var alpha string
	fmt.Scan(&alpha)
	u := strings.ToUpper(alpha)
	if alpha==u {
		fmt.Println("A")
	} else {
		fmt.Println("a")
	}
}
