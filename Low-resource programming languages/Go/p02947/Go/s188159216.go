package main

import (
	"fmt"
	"sort"
)

type runeSort struct {
	s []rune
}

func (r runeSort)Len() int { return len(r.s) }
func (r runeSort)Less(i, j int) bool { return r.s[i] < r.s[j] }
func (r runeSort)Swap(i, j int) { r.s[i], r.s[j] = r.s[j], r.s[i] }

func main() {
	var N int
	fmt.Scanf("%d", &N)
	var str string

	m := make(map[string]int)

	for i := 0; i < N; i++ {
		fmt.Scanf("%s", &str)

		runes := []rune(str)
		sort.Sort(runeSort{runes})
		m[string(runes)]++
	}

	var ans int64
	for _, v := range m {
		ans += pairCount(int64(v))
	}
	fmt.Println(ans)
}


func pairCount(n int64) int64 {
	if n == 1 {
		return 0
	} else {
		return (n-1) + pairCount(n-1)
	}
}