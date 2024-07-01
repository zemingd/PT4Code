package main

import (
	"fmt"
	"strings"
	"sort"
)

func main() { 
	var n int
	fmt.Scan(&n)
	stringList := make([]string, n)
	for i:=0; i < n; i++{
		var s string
		fmt.Scan(&s)
		k := strings.Split(s, "")
		sort.Strings(k)
		stringList[i] = strings.Join(k, "")
	}
	m := map[string]int{}
	ans := 0
	for _, sList:=range stringList {
		ans += m[sList]
		m[sList]++
	}
	fmt.Println(ans)
}