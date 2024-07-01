package main

import "fmt"
import "sort"
import "strings"

func main() {
	var n, l int
	fmt.Scanf("%d %d", &n, &l)

	strs := make([]string, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&strs[i])
	}

	sort.Strings(strs)
	fmt.Println(strings.Join(strs, ""))
}