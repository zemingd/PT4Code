package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

type mint64 []int64

func (p mint64) Len() int           { return len(p) }
func (p mint64) Less(i, j int) bool { return p[i] < p[j] }
func (p mint64) Swap(i, j int)      { p[i], p[j] = p[j], p[i] }

func mInt64s(a []int64) { sort.Sort(mint64(a)) }

func main() {
	sc.Split(bufio.ScanWords)
	n := nextInt()
	k := nextInt()
	a := make([]int, n)
	for i := 0; i < n; i++ {
		a[i] = nextInt()
	}
	//	sort.Ints(a)
	m := make([]int64, n*(n-1)/2)
	c := 0
	for i := 0; i < n-1; i++ {
		for j := i + 1; j < n; j++ {
			m[c] = int64(a[i]) * int64(a[j])
			c++
		}
	}
	mInt64s(m)
	fmt.Println(m[k-1])
}

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}
