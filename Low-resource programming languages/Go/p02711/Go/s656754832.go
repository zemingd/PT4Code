package main

import (
	"fmt"
	"strings"
)

func main() {
	var N string
	fmt.Scan(&N)
	result := "No"

	for i, v := range strings.Split(N, "") {
		if v == "7" {
			result = "Yes"
		}
	}

	fmt.Println(result)
}