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
	aa := make([]int, n)
	bb := make([][2]int, n)
	for i := 0; i < n; i++ {
		aa[i] = getNextInt(scanner)
		bb[i][0] = i
		bb[i][1] = aa[i]
	}
	sort.SliceStable(bb, func(i, j int) bool {
		return bb[i][1] > bb[j][1]
	})
	seg := newSegment(n)
	seg.update(bb[0][0], 1, seg.add)
	var ans int64
	for i := 1; i < n; i++ {
		l := seg.left(0, bb[i][0]-1, 1)
		r := seg.right(0, bb[i][0]+1, 1)
		if l == -1 {
			l = seg.left(0, n-1, 1)
		}
		if r == n {
			r = seg.right(0, 0, 1)
		}
		ans += int64(min(aa[l], aa[r]))
		seg.update(bb[i][0], 1, seg.add)
	}
	fmt.Fprintln(writer, ans)
}
func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}

type segment [][]int

func newSegment(n int) segment {
	seg := make(segment, 0)
	for n > 1 {
		seg = append(seg, make([]int, n))
		n = (n + 1) >> 1
	}
	seg = append(seg, make([]int, 1))
	return seg
}
func (seg segment) update(i int, v int, f func(x, y int) int) {
	seg[0][i] = v
	for h := 1; h < len(seg); h++ {
		i >>= 1
		if i<<1+1 < len(seg[h-1]) {
			seg[h][i] = f(seg[h-1][i<<1], seg[h-1][i<<1+1])
		} else {
			seg[h][i] = seg[h-1][i<<1]
		}
	}
}
func (seg segment) query(l, r int, s int, f func(x, y int) int) int {
	for h := 0; h < len(seg) && l < r; h++ {
		if l&1 == 1 {
			s = f(s, seg[h][l])
			l++
		}
		l >>= 1
		if r&1 == 1 {
			s = f(s, seg[h][r-1])
		}
		r >>= 1
	}
	return s
}
func (seg segment) add(x, y int) int {
	return x + y
}
func (seg segment) left(h, i, k int) int {
	if i < 0 {
		return -1
	}
	if seg[h][i] < k {
		k -= seg[h][i]
		i--
		if i&1 == 0 {
			return seg.left(h, i, k)
		}
		return seg.left(h+1, i>>1, k)
	}
	if h == 0 {
		return i
	}
	if k <= seg[h][i]-seg[h-1][i<<1] {
		return seg.left(h-1, i<<1+1, k)
	}
	return seg.left(h-1, i<<1, k-seg[h][i]+seg[h-1][i<<1])
}
func (seg segment) right(h, i, k int) int {
	if h >= len(seg) || i >= len(seg[h]) {
		return len(seg[0])
	}
	if seg[h][i] < k {
		k -= seg[h][i]
		i++
		if i&1 == 1 {
			return seg.right(h, i, k)
		}
		return seg.right(h+1, i>>1, k)
	}
	if h == 0 {
		return i
	}
	if k <= seg[h-1][i<<1] {
		return seg.right(h-1, i<<1, k)
	}
	return seg.right(h-1, i<<1+1, k-seg[h-1][i<<1])
}
