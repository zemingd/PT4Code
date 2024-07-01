package main

import "fmt"

func main() {
	var A, B int
	fmt.Scanf("%d %d", &A, &B)

	var ans int
	if A >= 13 {
		ans = B
	} else if A > 6 {
		ans = B / 2
	} else {
		ans = 0
	}
	fmt.Println(ans)
}
