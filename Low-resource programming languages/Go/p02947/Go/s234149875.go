package main

import (
	"fmt"
	"sort"
	"strings"
)

func main() {
	var n int
	fmt.Scan(&n)

	dic := make(map[string]int , n)
	for i := 0; i < n; i++ {
		var s string
		fmt.Scan(&s)

		ss := split(s)
		sort.Strings(ss)
		//si = append(si, strings.Join(ss,""))
		dic[strings.Join(ss,"")]++
	}

	cnt := 0
	for _, v := range dic {
		cnt+= v * (v-1) / 2
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
