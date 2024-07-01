package main

import (
	"fmt"
	"sort"
	"strings"
)

func main() {
	var s string
	var k int
	fmt.Scan(&s, &k)

	l := map[string]struct{}{}
	for start := range s {
		for end := start + 1; end <= len(s); end++ {
			if end-start > k {
				break
			}
			l[s[start:end]] = struct{}{}
		}
	}
	ss := make([]substring, 0)
	for key, _ := range l {
		ss = append(ss, substring{val: key})
	}

	sort.Sort(substrings(ss))
	fmt.Println(ss[k-1].val)
}

type substring struct {
	val string
}

type substrings []substring

func (s substrings) Len() int {
	return len(s)
}

func (s substrings) Less(i, j int) bool {
	if strings.HasPrefix(s[i].val, s[j].val) {
		return false
	}
	for k := range s[i].val {
		if s[i].val[k] == s[j].val[k] {
			continue
		}
		return s[i].val[k] < s[j].val[k]
	}
	return true
}

func (s substrings) Swap(i, j int) {
	s[i], s[j] = s[j], s[i]
}