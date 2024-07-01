package main

import (
	"fmt"
	"strings"
)

func main() {
	var n, k int
	fmt.Scan(&n, &k)
	mods := make([]int, 0)
	for n > 0 {
		mods = append([]int{n % k}, mods...)
		n = n / k
	}
	fmt.Println(len(mods))
}

func JoinInts(ints []int) string {
	return strings.Trim(strings.Join(strings.Fields(fmt.Sprint(ints)), ""), "[]")
}
