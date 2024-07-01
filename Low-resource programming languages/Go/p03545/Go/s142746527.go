package main

import (
	"fmt"
	"strconv"
)

var s string
var ans []byte

func dfs(i, sum int) bool {
	if i == 4 {
		if sum == 7 {
			return true
		}
		return false
	}
	a, _ := strconv.Atoi(string(s[i]))
	if dfs(i+1, sum+a) {
		ans = append([]byte{'0' + byte(a)}, ans...)
		ans = append([]byte{'+'}, ans...)
		return true
	}
	if dfs(i+1, sum-a) {
		ans = append([]byte{'0' + byte(a)}, ans...)
		ans = append([]byte{'-'}, ans...)
		return true
	}
	return false
}

func main() {
	fmt.Scan(&s)
	ans = make([]byte, 0)
	a, _ := strconv.Atoi(string(s[0]))
	dfs(1, a)
	ans = append([]byte{'0' + byte(a)}, ans...)
	fmt.Println(string(ans) + "=7")
}
