package main

import (
	"fmt"
	"sort"
	"strings"
)

func main() {
	var n, l int
	fmt.Scanf("%d %d", &n, &l)

	var s = make([]string, n)

	for i := 0; i < n; i++ {
		fmt.Scanln(&s[i])
	}
	fmt.Println(logic(s))
}

func logic(s []string) string {
	sort.Strings(s)
	return strings.Join(s, "")
}
