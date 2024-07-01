package main

import (
	"fmt"
	"sort"
	"strings"
)

func main() {
	var n, l int
	var str string
	fmt.Scan(&n, &l)

	s := make([]string, n)

	for i := 0; i < n; i++ {
		fmt.Scan(&str)
		s = append(s, str)
	}

	sort.Strings(s)
	fmt.Println(strings.Join(s, ""))
}
