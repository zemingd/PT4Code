package main

import (
	"fmt"
	"sort"
)

func main() {
	s := make([]int, 3)
	fmt.Scan(&s[0], &s[1], &s[2])
	sort.Ints(s)

	ans := "No"
	if s[0] == s[1] && s[1] != s[2] {
		ans = "Yes"
	} else if s[1] == s[2] && s[0] != s[1] {
		ans = "Yes"
	}

	fmt.Println(ans)

}
