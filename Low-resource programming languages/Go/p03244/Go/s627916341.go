package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
)

var sc = bufio.NewScanner(os.Stdin)

const inf = 1 << 60
const mod int = 1e9 + 7

func ri() (n int) {
	sc.Scan()
	for _, v := range sc.Bytes() {
		n = n*10 + int(v-48)
	}
	return
}

func isEven(n int) bool { return n%2 == 0 }
func isOdd(n int) bool  { return n%2 != 0 }

type pair struct {
	key int
	val int
}
type pairlist []pair

func (p pairlist) Len() int           { return len(p) }
func (p pairlist) Less(i, j int) bool { return p[i].val > p[j].val }
func (p pairlist) Swap(i, j int)      { p[i], p[j] = p[j], p[i] }

func sortMapByValue(m map[int]int) pairlist {
	pl := make(pairlist, len(m))
	i := 0
	for k, v := range m {
		pl[i] = pair{k, v}
		i++
	}
	sort.Sort(pl)
	return pl
}

func main() {
	sc.Split(bufio.ScanWords)
	n := ri()
	v := make([]int, n)
	for i := 0; i < n; i++ {
		v[i] = ri()
	}
	e := make(map[int]int)
	o := make(map[int]int)
	for i, vv := range v {
		if i%2 == 0 {
			e[vv]++
		} else {
			o[vv]++
		}
	}
	eSorted := sortMapByValue(e)
	oSorted := sortMapByValue(o)
	ans := -1
	if eSorted[0].key != oSorted[0].key {
		ans = len(v) - eSorted[0].val - oSorted[0].val
	} else if len(eSorted) == 1 && len(oSorted) == 1 {
		ans = eSorted[0].val
	} else {
		if len(eSorted) == 1 {
			ans += len(v) - eSorted[0].val - oSorted[1].val
		} else {
			ans += len(v) - oSorted[1].val - oSorted[0].val
		}
	}
	fmt.Println(ans)
}
