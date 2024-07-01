package main

import (
	"fmt"
	"strconv"
)

var N int

func main() {
	fmt.Scan(&N)
	fmt.Println(dfs(0))
}
func dfs(s int) int {
	var r int
	if s > N {
		return 0
	}
	f3, f5, f7 := false, false, false
	for _, v := range strconv.Itoa(s) {
		switch string(v) {
		case "3":
			f3 = true
		case "5":
			f5 = true
		case "7":
			f7 = true
		}
	}
	if f3 && f5 && f7 {
		r++
	}

	for _, c := range []int{3, 5, 7} {
		r += dfs(s*10 + c)
	}
	return r
}