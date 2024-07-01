package main

import (
	"fmt"
)

func main() {
	var n, l int
	fmt.Scanf("%d %d", &n, &l)

	sum := 0
	for i := 0; i < n; i++ {
		sum += l + i
	}

	if l < 0 && l+n > 0 {
		fmt.Print(sum)
		return
	}

	if l == 0 {
		fmt.Print(sum)
		return
	}

	if l > 0 {
		fmt.Print(sum - l)
		return
	}

	if l < 0 {
		fmt.Print(sum - (l + n) - 1)
		return
	}

	return
}
