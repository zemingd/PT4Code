package main

import (
	"fmt"
	"sort"
)

func main() {
	var (
		n int
	)
	fmt.Scan(&n)
	ss := make([]string, n)
	for i := 0; i < n; i++ {
		var s string
		fmt.Scan(&s)
		ints := make([]int, 10)
		for j := 0; j < 10; j++ {
			ints[j] = int(s[j])
		}
		sort.Ints(ints)
		s = ""
		for j := 0; j < 10; j++ {
			s += string(ints[j])
		}
		ss[i] = s
	}
	sort.Strings(ss)
	var ret int64 = 0
	previous := ""
	count := 0
	for i := 0; i < n; i++ {
		if ss[i] == previous {
			count++
			ret += int64(count)
		} else {
			count = 0
		}
		previous = ss[i]
	}
	fmt.Println(ret)
}
