package main

import (
	"fmt"
	"sort"
	"strings"
)

func main() {
	var n int
	fmt.Scan(&n)
	s := make([]string, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&s[i])
	}

	nums := map[string]int{}
	ans := 0
	for i := 0; i < n; i++ {
		fields := strings.Split(s[i], "")
		sort.Strings(fields)
		str := strings.Join(fields, "")
		ans += nums[str]
		nums[str]++
	}
	fmt.Println(ans)
}
