package main

import (
	"fmt"
	"sort"
	"strings"
)

func main() {
	var n int
	fmt.Scan(&n)
	ss := make([]string, n)
	m := make(map[string]int, n)
	r := 0
	for i := range ss {
		fmt.Scan(&ss[i])
		ss[i] = SortString(ss[i])
		_, ok := m[ss[i]]
		if ok {
			m[ss[i]]++
			r += m[ss[i]]
		} else {
			m[ss[i]] = 0
		}
	}
	fmt.Println(r)
}
func SortString(w string) string {
	s := strings.Split(w, "")
	sort.Strings(s)
	return strings.Join(s, "")
}
