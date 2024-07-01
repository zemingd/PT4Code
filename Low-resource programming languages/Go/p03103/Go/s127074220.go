package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
	scanInit()

	n := nextInt()
	m := nextInt()
	p := make([]pair, n)

	for i := 0; i < n; i++ {
		p[i].a = nextInt()
		p[i].b = nextInt()
	}

	sortPairs(p)

	cost := 0
	nowM := 0
	for i := 0; i < n; i++ {
		if nowM >= m {
			break
		}

		buy := min(p[i].b, m-nowM)
		cost += p[i].a * buy
		nowM += buy
	}
	fmt.Println(cost)

}
func min(a, b int) int {
	if a > b {
		return b
	}
	return a
}

// Pair ソート
// s := make([]pair, n)
// sortPairs(s)
type pair struct { // f=first, s=second
	a int
	b int
}

// []pair をf->sの順でソートする
func sortPairs(s []pair) {
	sort.Slice(s, func(i, j int) bool {
		if s[i].a == s[j].a { // fが同じ場合はsを比較する
			return s[i].b < s[j].b
		}
		return s[i].a < s[j].a
	})
	return
}

// ---- readfunc
func scanInit() {
	const cap = 200 * 1024 // Default=64
	var buf = make([]byte, cap)
	sc.Buffer(buf, cap)
	sc.Split(bufio.ScanWords)
	return
}
func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}
func nextStr() string {
	sc.Scan()
	return sc.Text()
}
