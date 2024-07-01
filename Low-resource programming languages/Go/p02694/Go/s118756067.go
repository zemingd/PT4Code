package main

import (
	"fmt"
)

func main() {

	var K int
	fmt.Scanf("%d", &K)

	var year, money int
	year = 0
	money = 100

	for {
		if int(money) < K {
			year++
			money = int(float64(money) * 1.01)
		} else {
			break
		}
	}
	fmt.Println(year)
}
