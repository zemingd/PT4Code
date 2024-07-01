package main

import (
	"fmt"
	"os"
	"strings"
)

func main() {

	var s string
	var i int = 0
	var result string = ""

	fmt.Scan(&s)

	if len(s) > 100000 {
		fmt.Println("overflow")
		os.Exit(0)
	}

	string_array := strings.Split(s, "")

	for ; i < len(s); i++ {
		count := i + 1
		// odd
		if count%2 == 1 {

			result += string_array[i]

		}
	}
	fmt.Println(result)

}
