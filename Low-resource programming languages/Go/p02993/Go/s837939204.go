package main

import (
	"fmt"
	"strings"
)

func main() {
	var a string
	fmt.Scan(&a)

	n := strings.Split(a, "")

	count := 0
	for i := 0; i < 3; i++ {
		if n[i] == n[i+1] {
			count++
		}
	}

	if count == 0 {
		fmt.Println("Good")
	} else {
		fmt.Println("No")
	}

}
