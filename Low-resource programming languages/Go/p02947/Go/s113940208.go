package main

import (
	"fmt"
	"sort"
	"strings"
)

func main() {
	var n int
	fmt.Scan(&n)
	list := make([]string, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&list[i])
	}

	result := map[string]int{}
	count := 0
	for i := 0; i < n; i++ {
		sortString := strings.Split(list[i], "")
		sort.Strings(sortString)
		join := strings.Join(sortString, "")
		count += result[join]
		result[join]++

	}
	fmt.Println(count)
}
