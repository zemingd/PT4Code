package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

func main() {
	scanInit()

	n := nextInt()
	p := make([]pair, n)

	for i := 0; i < n; i++ {
		x := nextInt()
		l := nextInt()
		p[i] = pair{x + l, x - l, x, l}
	}

	sortPairs(p)

	cnt := 1
	last := p[0].f
	for i := 1; i < n; i++ {
		// startがlastよりも未満だったらスルー
		if p[i].s < last {
			continue
		}

		last = p[i].f
		cnt++
	}

	fmt.Println(cnt)

}

// Pair ソート
// s := make([]pair, n)
// sortPairs(s)
type pair struct { // f=first, s=second
	f int
	s int
	x int
	l int
}

// []pair をf->sの順でソートする
func sortPairs(s []pair) {
	sort.Slice(s, func(i, j int) bool {
		if s[i].f == s[j].f { // fが同じ場合はsを比較する
			return s[i].s < s[j].s
		}
		return s[i].f < s[j].f
	})
	return
}

// ---- readfunc
var sc = bufio.NewScanner(os.Stdin)

func scanInit() {
	const cap = 200 * 1024 // default=64*1024
	var buf = make([]byte, cap)
	sc.Buffer(buf, cap)
	sc.Split(bufio.ScanWords)
	return
}
func nextInt() int {
	sc.Scan()
	i, _ := strconv.Atoi(sc.Text())
	return i
}
func nextStr() string {
	sc.Scan()
	return sc.Text()
}
