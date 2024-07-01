package main

import (
	"fmt"
	"math"
)

func pow(x, y int) int {
	return int(math.Pow(float64(x), float64(y)))
}
func main() {
	var N, K int
	var ans float64

	fmt.Scan(&N, &K)

	for i := 1; i <= N; i++ {
		var cnt int
		for {
			cnt++
			t := i * pow(2, cnt)
			if K <= t {
				break
			}
		}
		x := 1 / float64(N)
		y := 1 / float64(pow(2, cnt))

		ans += x * y
	}
	fmt.Println(ans)
}
