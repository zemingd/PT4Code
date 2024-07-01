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

func rs() string {
	sc.Scan()
	return sc.Text()
}

type sortRunes []rune
func (s sortRunes) Less(i, j int) bool { return s[i] < s[j] }
func (s sortRunes) Swap(i, j int)      { s[i], s[j] = s[j], s[i] }
func (s sortRunes) Len() int           { return len(s) }

func sortString(s string) string {
	r := []rune(s)
	sort.Sort(sortRunes(r))
	return string(r)
}

func sigma(x int) int { return x * (x + 1) / 2 }

func main() {
	sc.Split(bufio.ScanWords)
	n := ri()
	keys := make(map[string]int)
	for i := 0; i < n; i++ {
		s := rs()
		sSorted := sortString(s)
		keys[sSorted]++
	}
	ans := 0
	for _, v := range keys {
		if v == 0 || v == 1 {
			continue
		}
		ans += sigma(v - 1)
	}
	fmt.Println(ans)
}
