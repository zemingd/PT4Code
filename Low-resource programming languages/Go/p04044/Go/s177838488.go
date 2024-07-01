package main

import (
	"fmt"
	"sort"
	"strings"
)

func main() {
	var n, l int
	var s string
	//input
	fmt.Scan(&n, &l)
	strArr := make([]string, n, l)
	for i := 0; i < n; i++ {
		fmt.Scan(&s)
		strArr[i] = s
	}
	sort.Strings(strArr)
	s = strings.Join(strArr, "")
	fmt.Println(s)
}
