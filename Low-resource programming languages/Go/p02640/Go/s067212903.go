package main

import (
	"fmt"
)

func main() {
	var x, y int
	fmt.Scanf("%d %d", &x, &y)

	for kameNum := 0; kameNum <= x; kameNum++ {
		if y == tsuruKame(kameNum, x) {
			fmt.Println("Yes")
			return
		}
	}
	fmt.Println("No")
}

func tsuruKame(kameNum, tsurukameNum int) int {
	return kameNum*4 + (tsurukameNum-kameNum)*2
}
