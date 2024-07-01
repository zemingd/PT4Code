package main

import (
	"fmt"
)

func main() {
	var n, l int
	fmt.Scanf("%d, %d", &n, &l)

	sum := 0
	for i := 0; i < n; i++ {
		sum += l + i
	}

	if l < 0 {
		max := l + n
		fmt.Print(sum - max)
	} else if l > 0 {
		fmt.Print(sum - l)
	} else {
		fmt.Print(sum)
	}

}
