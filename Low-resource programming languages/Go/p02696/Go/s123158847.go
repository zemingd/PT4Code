package main

import (
	"fmt"
	"math"
)

func main() {
	var a, b, n int
	fmt.Scan(&a, &b, &n)

	var score, ans int
	tmp := int(math.Sqrt(float64(b)))

	strt := 0
	if n-tmp-2 > 0 {
		strt = n - tmp - 2
	}

	k := a % b
	for i := strt; i < b; i++ {
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
