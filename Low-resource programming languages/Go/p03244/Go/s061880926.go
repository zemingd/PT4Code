package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

var sc *bufio.Scanner

func init() {
	sc = bufio.NewScanner(os.Stdin)
	buffsize := 1000000
	buff := make([]byte, buffsize)
	sc.Buffer(buff, buffsize)
	sc.Split(bufio.ScanWords)
}

func loadint() (result int) {
	sc.Scan()
	result, _ = strconv.Atoi(sc.Text())
	return
}

func loadints(n int) []int {
	xs := make([]int, n)
	for i := 0; i < n; i++ {
		xs[i] = loadint()
	}
	return xs
}

type Pair struct {
	k int
	v int
}

type PairList []Pair

func (a PairList) Len() int {
	return len(a)
}

func (a PairList) Swap(i, j int) {
	a[i], a[j] = a[j], a[i]
}

func (a PairList) Less(i, j int) bool {
	return a[j].v < a[i].v
}

func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}

func main() {
	n := loadint()
	v := loadints(n)
	odd_counter := make(map[int]int)
	even_counter := make(map[int]int)
	for i := 0; i < n; i += 2 {
		odd_counter[v[i]]++
		even_counter[v[i+1]]++
	}
	odd_cs := PairList{Pair{0, 0}}
	for k, v := range odd_counter {
		odd_cs = append(odd_cs, Pair{k, v})
	}
	even_cs := PairList{Pair{0, 0}}
	for k, v := range even_counter {
		even_cs = append(even_cs, Pair{k, v})
	}
	sort.Sort(odd_cs)
	sort.Sort(even_cs)
	result := n
	if odd_cs[0].k == even_cs[0].k {
		result = n - max(odd_cs[0].v+even_cs[1].v, odd_cs[1].v+even_cs[0].v)
	} else {
		result = n - odd_cs[0].v - even_cs[0].v
	}
	fmt.Println(result)
}
