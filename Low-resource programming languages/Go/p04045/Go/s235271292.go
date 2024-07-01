package main

import (
	"fmt"
	"strconv"
)

var n, k int
var ans = int(1e9)
var d []int
var digits = [...]int{0, 1, 2, 3, 4, 5, 6, 7, 8, 9}

func min(a, b int) int {
	if a >= b {
		return b
	}
	return a
}
func dfs(step int, s string) {
	if step >= len(strconv.Itoa(n)) {
		v, _ := strconv.Atoi(s)
		if v >= n {
			ans = min(ans, v)
		}
		return
	}
	for i := 0; i < len(digits); i++ {
		ok := true
		for j := 0; j < len(d); j++ {
			if d[j] == digits[i] {
				ok = false
				break
			}
		}
		if ok {
			dfs(step+1, s+strconv.Itoa(digits[i]))
		}
	}
	return
}

func main() {
	fmt.Scan(&n, &k)
	d = make([]int, k)
	for i := range d {
		fmt.Scan(&d[i])
	}
	dfs(0, "")
	fmt.Println(ans)
}
