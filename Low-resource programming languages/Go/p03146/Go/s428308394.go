package main

import (
	"fmt"
)

func main() {
	var s int
	fmt.Scan(&s)
	mp := map[int]bool{}
	mp[s] = true
	m := 1
	for {
		m++
		s = f(s)
		if mp[s] {
			fmt.Println(m)
			return
		}
		mp[s] = true
	}
}

func f(a int) int {
	if a%2 == 0 {
		return a / 2
	} else {
		return 3*a + 1
	}
}
