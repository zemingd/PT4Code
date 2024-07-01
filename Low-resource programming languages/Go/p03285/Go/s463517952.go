package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)

	ans := "No"
	if n % 7 == 0 {
		ans = "Yes"
	} else {
		for i := 0; i < n; i += 7 {
			if (n-i)%4 == 0 {
				ans = "Yes"
				break
			}
		}
	}

	fmt.Println(ans)
}
