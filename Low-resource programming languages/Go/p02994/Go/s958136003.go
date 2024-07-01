package main

import (
	"fmt"
	"math"
)

func main() {

	var N, L int
	fmt.Scanf("%d %d", &N, &L)

	var sum int = 0
	var min int = 100000
	var number int
	for i := 1; i <= N; i++ {
		sum += L + i - 1
		if min >= int(math.Abs(float64(L)+float64(i)-1)) {
			min = int(math.Abs(float64(L) + float64(i) - 1))
			number = L + i - 1
		}
	}

	fmt.Println(sum - number)
}
