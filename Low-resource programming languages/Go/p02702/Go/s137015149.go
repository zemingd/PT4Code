package main

import (
	"fmt"
	"strconv"
)

func main() {
	var x string
	fmt.Scan(&x)
	rest := map[int]int{
		0: 1,
	}
	ten := 1
	sum := 0
	for i := len(x) - 1; i >= 0; i-- {
		val, _ := strconv.Atoi(string(x[i]))
		sum = ((ten%2019)*val + sum) % 2019
		ten *= 10
		rest[sum]++
	}
	ans := 0
	for _, v := range rest {
		ans += v * (v - 1) / 2
	}
	fmt.Println(ans)
}
