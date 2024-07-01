package main

import (
	"fmt"
	"strings"
)

func main() {
	var s string
	fmt.Scanf("%s", &s)

	if strings.Contains(s, "A") && strings.Contains(s, "B") {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
