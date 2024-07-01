package main

import (
	"fmt"
)

func main() {
	var n, k int
	fmt.Scanf("%d %d\n", &n, &k)
	a := make([]int, n)
	var min int
	for i := 0; i < n; i++ {
		var tmp int
		fmt.Scanf("%d", &tmp)
		if tmp == 1 {
			min = i
		}
		a[i] = tmp
	}
	res := 0
	res += (n - min + 1) / k
	if (n-min+1)%k != 0 {
		res++
	}
	res += (min + 1) / k
	if (min+1)%k != 0 {
		res++
	}

	fmt.Printf("%d\n", res)
}
