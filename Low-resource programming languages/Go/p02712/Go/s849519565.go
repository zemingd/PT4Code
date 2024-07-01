package main

import (
	"fmt"
)

func main() {

	var N int
	fmt.Scanf("%d", &N)

	var count int64
	count = 0

	for i := 1; i <= N; i++ {
		if i%3 == 0 || i%5 == 0 {
			continue
		} else {
			count = count + int64(i)
		}
	}

	fmt.Println(count)
}
