package main

import (
	"fmt"
)

func main() {

	var s string
	fmt.Scan(&s)

	result := "Yes"
	if s[0] == 'A' {
		if s[1] == 'A' {
			if s[2] == 'A' {
				result = "No"
			}
		}
	} else if s[0] == 'B' {
		if s[1] == 'B' {
			if s[2] == 'B' {
				result = "No"
			}
		}
	}

	fmt.Println(result)

}
