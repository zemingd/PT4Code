package main

import (
	"fmt"
)

func main() {
	var n, k int
	fmt.Scanf("%d %d\n", &n, &k)
	var min int
	for i := 0; i < n; i++ {
		var tmp int
		fmt.Scanf("%d", &tmp)
		if tmp == 1 {
			min = i
		}
	}
	res := 0
	if min >= n/2 {
		res += (n - 1 - min) / (k - 1)
		if (n-1-min)%(k-1) != 0 {
			res++
		}
		if k > (n - min) {
			min += (n - min) - k
		}
		res += min / (k - 1)
		if min%(k-1) != 0 {
			res++
		}
	} else {
		res += min / (k - 1)
		if min%(k-1) != 0 {
			res++
		}
		if min+1-k < 0 {
			min = k
		}
		res += (n - 1 - min) / (k - 1)
		if (n-1-min)%(k-1) != 0 {
			res++
		}
	}

	fmt.Printf("%d\n", res)
}
