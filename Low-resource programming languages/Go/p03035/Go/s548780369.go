package main

import (
	"fmt"
)

func main() {
	var A, B int
	fmt.Scan(&A, &B)

	var ans int
	if A <= 5 {
		ans = 0
	} else if A <= 12 {
		ans = B / 2
	} else {
		ans = B
	}
	fmt.Println(ans)
}