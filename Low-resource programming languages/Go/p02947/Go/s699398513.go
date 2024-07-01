package main

import (
	"fmt"
	"sort"
)

type ByRune []rune

func (r ByRune) Len() int           { return len(r) }
func (r ByRune) Swap(i, j int)      { r[i], r[j] = r[j], r[i] }
func (r ByRune) Less(i, j int) bool { return r[i] < r[j] }

func StringToRuneSlice(s string) []rune {
	var r []rune
	for _, runeValue := range s {
		r = append(r, runeValue)
	}
	return r
}

func SortStringByCharacter(s string) string {
	var r ByRune = StringToRuneSlice(s)
	sort.Sort(r)
	return string(r)
}

func count(ss []string) int64 {
	var cnt int64
	cnt = 1
	var ans int64
	sort.Strings(ss)
	n := len(ss)
	// fmt.Println(ss)
	for i := 0; i < n-1; i++ {
		s1 := ss[i]
		s2 := ss[i+1]
		if s1 == s2 {
			cnt++
		} else {
			ans += (cnt * (cnt - 1)) / 2
			// fmt.Println(ss[i], cnt, ans)
			cnt = 1
		}
	}
	if cnt > 1 {
		// fmt.Println(ss[n-1], cnt)
		ans += (cnt * (cnt - 1)) / 2
	}
	return ans
}

func main() {
	var n int
	fmt.Scan(&n)
	ss := make([]string, n)

	for i := 0; i < n; i++ {
		var s string
		fmt.Scan(&s)
		s = SortStringByCharacter(s)
		ss[i] = s
	}
	fmt.Println(count(ss))
}
