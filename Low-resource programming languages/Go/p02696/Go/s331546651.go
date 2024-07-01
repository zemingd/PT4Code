package main

import (
	"fmt"
)

func main() {
	var a, b, n int
	fmt.Scan(&a, &b, &n)

	var score, ans int

	k := a % b
	for i := 0; i < b; i++ {
		score = a*(i%b) - (k*(i%b))%b
		score /= b
		if ans <= score {
			ans = score
		}

		if i == n {
			break
		}
	}
	fmt.Println(ans)
}
