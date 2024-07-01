package main

import (
	"fmt"
)

func main() {
	var s string
	_, _ = fmt.Scan(&s)
	
	fmt.Println(answer160A(s))
}

func answer160A(s string) string {
	c3, c4 := string(s[2]), string(s[3])
	c5, c6 := string(s[4]), string(s[5])

	if (c3 == c4) && (c5 == c6) {
		return "Yes"
	}
	return "No"
}
