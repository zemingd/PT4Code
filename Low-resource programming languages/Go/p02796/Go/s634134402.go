package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func stringLineScan() string {
	sc.Scan()
	return sc.Text()
}

type SortName [][]int

func (x SortName) Len() int           { return len(x) }
func (x SortName) Less(i, j int) bool { return x[i][1] < x[j][1] }
func (x SortName) Swap(i, j int)      { x[i], x[j] = x[j], x[i] }

func main() {
	buf := make([]byte, 0)
	sc.Buffer(buf, 1000000009)
	sc.Split(bufio.ScanWords)
	n, _ := strconv.Atoi(stringLineScan())
	xl := make([][]int, n)
	for i := 0; i < n; i++ {
		t := make([]int, 3)
		x, _ := strconv.Atoi(stringLineScan())
		l, _ := strconv.Atoi(stringLineScan())
		t[0] = x - l
		t[1] = x + l
		xl[i] = t
	}
	sort.Sort(SortName(xl))
	m := -10000000000
	ans := 0
	for i := 0; i < n; i++ {
		if m <= xl[i][0] {
			m = xl[i][1]
			ans++
		}
	}
	fmt.Println(ans)
}
