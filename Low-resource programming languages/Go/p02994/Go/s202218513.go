package main

import (
	"fmt"
	"math"
)

func main() {
	var n, l int
	fmt.Scanf("%d %d", &n, &l)

	sum := 0
	abs := 99999999
	for i := 0; i < n; i++ {
		sum += l + i
		if abs > int(math.Abs(float64(l+i))) {
			abs = l + i
		}
	}

	if l+n <= 0 {
		fmt.Print(sum + abs)
	} else {
		fmt.Print(sum - abs)
	}
	return
}
