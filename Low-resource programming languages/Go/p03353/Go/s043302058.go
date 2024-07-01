package main

import (
	"fmt"
	"sort"
)

var s string
var K int

func main() {
	fmt.Scanf("%s", &s)
	fmt.Scanf("%d", &K)

	ss := []rune(s)

	set := make(map[string]struct{})
	for i := 0; i < len(ss); i++ {
		for j := i; j < i+K && j < len(ss); j++ {
			set[string(ss[i:j+1])] = struct{}{}
		}
	}

	strs := make([]string, 0, K*len(ss))

	for k := range set {
		strs = append(strs, k)
	}

	sort.Strings(strs)

	fmt.Println(strs[K-1])
}
