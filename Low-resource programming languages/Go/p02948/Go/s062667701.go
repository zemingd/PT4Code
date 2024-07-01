package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

func configure(scanner *bufio.Scanner) {
	scanner.Split(bufio.ScanWords)
	scanner.Buffer(make([]byte, 1000005), 1000005)
}
func getNextString(scanner *bufio.Scanner) string {
	scanned := scanner.Scan()
	if !scanned {
		panic("scan failed")
	}
	return scanner.Text()
}
func getNextInt(scanner *bufio.Scanner) int {
	i, _ := strconv.Atoi(getNextString(scanner))
	return i
}
func getNextInt64(scanner *bufio.Scanner) int64 {
	i, _ := strconv.ParseInt(getNextString(scanner), 10, 64)
	return i
}
func getNextFloat64(scanner *bufio.Scanner) float64 {
	i, _ := strconv.ParseFloat(getNextString(scanner), 64)
	return i
}
func main() {
	fp := os.Stdin
	wfp := os.Stdout
	extra := 0
	if os.Getenv("I") == "IronMan" {
		fp, _ = os.Open(os.Getenv("END_GAME"))
		extra = 100
	}
	scanner := bufio.NewScanner(fp)
	configure(scanner)
	writer := bufio.NewWriter(wfp)
	defer func() {
		r := recover()
		if r != nil {
			fmt.Fprintln(writer, r)
		}
		writer.Flush()
	}()
	solve(scanner, writer)
	for i := 0; i < extra; i++ {
		fmt.Fprintln(writer, "-----------------------------------")
		solve(scanner, writer)
	}
}
func solve(scanner *bufio.Scanner, writer *bufio.Writer) {
	n := getNextInt(scanner)
	m := getNextInt(scanner)
	pp := make([]pair, n)
	for i := 0; i < n; i++ {
		pp[i][0] = m - getNextInt(scanner)
		pp[i][1] = getNextInt(scanner)
	}
	sort.SliceStable(pp, func(i, j int) bool {
		return pp[i][0] < pp[j][0]
	})
	mh := mheap{}
	j := 0

	for i := 0; i <= m; i++ {
		for j < n && pp[j][0] <= i {
			if pp[j][0] >= 0 {
				mh.push(pp[j][1])
			}
			j++
		}
		for len(mh) > i+1 {
			mh.pop()
		}
	}
	var ans int
	for len(mh) > 0 {
		ans += mh.pop()
	}
	fmt.Fprintln(writer, ans)
}

type pair [2]int

type mheap []int

func (m *mheap) pop() int {
	n := len(*m) - 1
	m.swap(0, n)
	m.down(0, n)
	x := (*m)[n]
	*m = (*m)[:n]
	return x
}
func (m *mheap) push(x int) {
	n := len(*m)
	*m = append(*m, x)
	for n > 0 && m.less(n, (n-1)>>1) {
		m.swap(n, (n-1)>>1)
		n = (n - 1) >> 1
	}
}
func (m mheap) less(i, j int) bool {
	return m[i] < m[j]
}
func (m mheap) swap(i, j int) {
	m[i], m[j] = m[j], m[i]
}
func (m mheap) down(i, n int) {
	for {
		l := i<<1 + 1
		r := l + 1
		if r < n && m.less(r, l) {
			l = r
		}
		if l < n && m.less(l, i) {
			m.swap(i, l)
			i = l
			continue
		}
		break
	}
}
