package main

import (
	"fmt"
	"sort"
	"strings"
)

type Alphabetic []string

func main() {
	var n, cnt int
	fmt.Scan(&n)

	s := make(Alphabetic, n)
	for i := range s {
		var w string
		fmt.Scan(&w)
		s[i] = sortString(w)
	}
	sm := make(map[string]int)

	for i := 0; i < len(s); i++ {
		str := s[i]
		n := sm[str]
		if n != 0 {
			cnt += n
		}
		sm[str]++
	}

	fmt.Println(cnt)
}

func sortString(w string) string {
	s := strings.Split(w, "")
	sort.Strings(s)
	return strings.Join(s, "")
}
