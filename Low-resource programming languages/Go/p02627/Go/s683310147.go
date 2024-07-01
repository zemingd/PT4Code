package main

import (
	"fmt"
	"strings"
)

func main() {

	var alpha string
	fmt.Scanf("%s", &alpha)

	if strings.ToUpper(alpha) == alpha {
		fmt.Println("A")
	} else {
		fmt.Println("a")
	}
}
