package main

import (
	"fmt"
	"strings"
)

func main() {
	var S string
	fmt.Scan(&S)

	result := ""
	for i := 0; i < 26 && len(result) == 0; i++ {
		if !strings.Contains(S, string(97+i)) {
			result = string(97 + i)
		}
	}

	if len(result) == 0 {
		fmt.Println("None")
	} else {
		fmt.Println(result)
	}
}
