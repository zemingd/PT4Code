package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func next() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	a, _ := strconv.Atoi(next())
	return a
}

type runes []rune

func (rs runes) Len() int           { return len(rs) }
func (rs runes) Swap(i, j int)      { rs[i], rs[j] = rs[j], rs[i] }
func (rs runes) Less(i, j int) bool { return rs[i] < rs[j] }

func main() {
	sc.Split(bufio.ScanWords)
	var N int
	N = nextInt()
	mp := make(map[string]int)
	for i := 0; i < N; i++ {
		s := []rune(next())
		sort.Sort(runes(s))
		mp[string(s)]++
	}
	ans := 0
	for _, n := range mp {
		ans += n * (n - 1) / 2
	}
	fmt.Println(ans)

}
