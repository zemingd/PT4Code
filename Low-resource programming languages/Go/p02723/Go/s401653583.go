package main

import (
	"fmt"
)

func main() {
	var s string
	fmt.Scan(&s)

	result := "No"
	if s[2] == s[3] && s[4] == s[5] {
		result = "Yes"
	}

	fmt.Println(result)

}
