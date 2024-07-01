package main

import (
	"fmt"
	"sort"
)

func main() {
	var n, l int
	fmt.Scan(&n, &l)
	s := make([]string, n)
	for i := range s {
		fmt.Scan(&s[i])
	}

	sort.Sort(sort.StringSlice(s))

	var ans string
	for _, si := range s {
		ans += si
	}

	fmt.Println(ans)
}
