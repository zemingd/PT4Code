package main

import (
	"fmt"
	"sort"
	"strings"
)

func main() {
	var n, l int
	fmt.Scan(&n, &l)
	var s []string
	for i := 0; i < n; i++ {
		var tmp string
		fmt.Scan(&tmp)
		s = append(s, tmp)
	}
	sort.Strings(s)
	fmt.Println(strings.Join(s, ""))
	return
}
