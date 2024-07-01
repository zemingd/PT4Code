package main

import (
	"fmt"
)

func main() {
	var n, l int
	fmt.Scanf("%d %d", &n, &l)

	sum := (l + (l + n - 1)) * n / 2

	var ans int

	if l >= 0 {
		ans = sum - l
	} else if (l + n - 1) <= 0 {
		ans = sum - (l + n - 1)
	}

	fmt.Println(ans)
}
