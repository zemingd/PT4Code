package main

import (
	"fmt"
	"sort"
)

func main()  {
	var n, m int64
	fmt.Scan(&n, &m)
	ed := make(drinks, n)

	for i:=0;int64(i)<n;i++ {
		fmt.Scan(&ed[i].a, &ed[i].b)
	}

	sort.Slice(ed, func(i, j int) bool {
		return ed[i].a < ed[j].a
	})

	var ans int64
	for i:=0;m>0;i++ {
		if ed[i].b > m {
			ans += ed[i].a*(m)
		} else {
			ans += ed[i].a*ed[i].b
		}
		m -= ed[i].b
	}
	fmt.Println(ans)
}

type energyDrink struct {
	a int64
	b int64
}
type drinks []energyDrink
func (s drinks) Len() int           { return len(s) }
func (s drinks) Swap(i, j int)      { s[i], s[j] = s[j], s[i] }
func (s drinks) Less(i, j int) bool { return s[i].a < s[j].a }
