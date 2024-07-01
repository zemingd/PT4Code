package main

import (
	"fmt"
)

func main() {
	var n int
	_, _ = fmt.Scan(&n)
	
	fmt.Println(answer162A(n))
}

func answer162A(n int) string {
	d100, d10, d1 := n/100%100, n/10%10, n%10

	if d100 == 7 || d10 == 7 || d1 == 7 {
		return "Yes"
	}

	return "No"
}
