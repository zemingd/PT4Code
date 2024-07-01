package main

import (
	"fmt"
	"sort"
)

func main() {
	var n, l int
	fmt.Scan(&n, &l)
	s := make([]string, n)
	for i := 0; i< n; i++{
		fmt.Scan(&s[i])
	}
	sort.Strings(s)

	var ans string
	for _, key := range	 s{
		ans += key
	}
	fmt.Print(ans)
}
