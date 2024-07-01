package main

import (
	"fmt"
	"sort"
	"strings"
)

func main() {
	var N int
	fmt.Scan(&N)

	c := make(map[string]int)
	var s string
	for i := 0; i < N; i++ {
		fmt.Scan(&s)
		t := strings.Split(s, "")
		sort.Strings(t)
		s := strings.Join(t, "")
		c[s]++
	}

	ans := 0
	for _, s := range c {
		if s > 1 {
			v := 0.5 * float64((s-1)*s)
			ans += int(v)
		}
	}
	fmt.Println(ans)
}
