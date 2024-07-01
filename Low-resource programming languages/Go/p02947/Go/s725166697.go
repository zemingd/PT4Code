package main

import (
	"fmt"
	"sort"
	"strings"
)

func main() {
	var n int
	fmt.Scan(&n)

	// s := make([]string, n)
	var si []string
	for i := 0; i < n; i++ {
		var s string
		fmt.Scan(&s)

		ss := split(s)
		sort.Strings(ss)
		si = append(si, strings.Join(ss,""))
	}

	cnt := 0
	for i := 0 ; i < n; i++ {
		for  j := i+1; j <n; j++ {
			if si[i] == si[j] {
				cnt++
			}
		}
	}
	fmt.Println(cnt)
}

func split(s string) []string {
	ret := make([]string, len([]rune(s)))
	for i, v := range []rune(s) {
		ret[i] = string(v)
	}
	return ret
}
