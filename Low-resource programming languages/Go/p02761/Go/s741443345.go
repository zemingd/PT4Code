package main

import (
	"fmt"
	"strconv"
)

func main() {
	var n, m int
	fmt.Scan(&n, &m)
	s := make([]int, m)
	c := make([]int, m)
	for i := 0; i < m; i++ {
		fmt.Scan(&s[i], &c[i])
	}

	for i := 0; i < 1000; i++ {
		str := strconv.Itoa(i)
		rstr := []rune(str)
		if len(rstr) != n {
			continue
		}

		ans := true
		for j := 0; j < m; j++ {
			if string(rstr[s[j]-1]) != strconv.Itoa(c[j]) {
				ans = false
			}
		}
		if ans {
			fmt.Println(i)
			return
		}
	}

	fmt.Println(-1)
}

func reverse(str string) string {
	rs := []rune(str)
	for i, j := 0, len(str)-1; i < j; i, j = i+1, j-1 {
		rs[i], rs[j] = rs[j], rs[i]
	}
	return string(rs)
}
