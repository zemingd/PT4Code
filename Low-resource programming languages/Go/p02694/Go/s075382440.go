package main

import (
	"fmt"
)

func main() {

	var K int64
	fmt.Scanf("%d", &K)

	var year, money int64
	year = 0
	money = 100

	for {
		if money < K {
			year++
			money = money + money/100
		} else {
			break
		}
	}
	fmt.Println(year)
}
