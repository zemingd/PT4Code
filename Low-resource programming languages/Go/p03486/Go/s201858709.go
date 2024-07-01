package main

import (
	"fmt"
	"sort"
)

func sortRune(s string, desc bool) string {
	r := []rune(s)
	sort.Slice(r, func(i, j int) bool {
		if desc {
			return r[i] > r[j]
		} else {
			return r[i] < r[j]
		}
	})
	return string(r)
}

func main() {
	var s, t string
	fmt.Scan(&s, &t)

	ss := sortRune(s, false)
	tt := sortRune(t, true)

	if ss < tt {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}

}