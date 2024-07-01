package main

import (
	"fmt"
	"strconv"
)

func ok(n int) bool {
	var s string
	s = strconv.Itoa(n)
	var flg3, flg5, flg7 bool
	for i := 0; i < len(s); i++ {
		switch s[i] {
		case '3':
			flg3 = true
		case '5':
			flg5 = true
		case '7':
			flg7 = true
		default:
			return false
		}
	}
	if flg3 && flg5 && flg7 {
		return true
	}
	return false
}

func main() {
	var N int
	fmt.Scan(&N)
	var cnt int
	for i := 0; i <= N; i++ {
		if ok(i) {
			cnt++
		}
	}
	fmt.Println(cnt)
}
