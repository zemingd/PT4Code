package main

import (
	"fmt"
)

func countMod(str string) map[int]int {
	const div = 2019
	prev := 0
	l := len(str)
	digit := 1
	count := make(map[int]int)
	count[0] = 1
	for i := l - 1; i >= 0; i-- {
		n := int(rune(str[i]) - '0')
		mod := (n*digit + prev) % div
		count[mod]++
		prev = mod
		digit *= 10
	}
	return count
}

func solve(str string) int {
	count := countMod(str)
	ans := 0
	for _, v := range count {
		ans += v * (v - 1) / 2
	}
	return ans
}

func main() {
	var str string
	fmt.Scan(&str)

	ans := solve(str)
	fmt.Println(ans)
}
