package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)

	ans := "No"
	if n%7 == 0 || n%4 == 0 {
		ans = "Yes"
	}

	for i := 1; i < n; i *= 7 {
		if (n-i)%4 == 0 {
			ans = "Yes"
			break
		}

	}

	fmt.Println(ans)
}
