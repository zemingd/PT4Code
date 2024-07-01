package main

import (
	"bufio"
	"fmt"
	"math/rand"
	"os"
	"strconv"
	"time"
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
	start := time.Now()
	rand.Seed(start.Unix())
	d := getNextInt(scanner)
	n := 26
	cc := make([]int, n)
	ll := make([]int, n)
	for i := 0; i < n; i++ {
		cc[i] = getNextInt(scanner)
		ll[i] = -1
	}
	ss := makeGrid(d, n)
	for i := 0; i < d; i++ {
		for j := 0; j < n; j++ {
			ss[i][j] = getNextInt(scanner)
		}
	}
	seg := make([]segment, n)
	for i := 0; i < n; i++ {
		seg[i] = newSegment(d)
	}
	tt := make([]int, d)
	for i := 0; i < d; i++ {
		tt[i] = i % 26
		seg[tt[i]].update(i, 1, seg[tt[i]].add)
	}
	scores := getScore(cc, ll, tt, ss)
	end := time.Now()
	for end.Sub(start).Seconds() < 1.8 {
		ud := int(rand.Int31n(int32(d)))
		uq := int(rand.Int31n(26))
		pq := tt[ud]
		ps := scores[d-1]
		updateScore(ud, uq, d, cc, tt, ss, scores, seg)
		if scores[d-1] < ps {
			updateScore(ud, pq, d, cc, tt, ss, scores, seg)
		}
		end = time.Now()
	}
	for i := 0; i < d; i++ {
		fmt.Fprintln(writer, tt[i]+1)
	}
}
func updateScore(ud, uq, d int, cc, tt []int, ss [][]int, scores []int, seg []segment) {
	t := tt[ud]
	l := seg[t].left(0, ud-1, 1)
	r := seg[t].right(0, ud+1, 1)
	for j := ud; j < r; j++ {
		scores[j] -= cc[t] * (ud - l) * (j - ud + 1)
	}
	for j := r; j < d; j++ {
		scores[j] -= cc[t] * (ud - l) * (r - ud)
	}
	seg[t].update(ud, 0, seg[t].add)
	l = seg[uq].left(0, ud-1, 1)
	r = seg[uq].right(0, ud+1, 1)
	for j := ud; j < r; j++ {
		scores[j] += cc[uq] * (ud - l) * (j - ud + 1)
	}
	for j := r; j < d; j++ {
		scores[j] += cc[uq] * (ud - l) * (r - ud)
	}
	seg[uq].update(ud, 1, seg[uq].add)
	for j := ud; j < d; j++ {
		scores[j] += (ss[ud][uq] - ss[ud][t])
	}
	tt[ud] = uq
}
func getScore(cc, ll, tt []int, ss [][]int) []int {
	var score int
	d := len(tt)
	n := 26
	scores := make([]int, d)
	for i := 0; i < d; i++ {
		t := tt[i]
		score += ss[i][t]
		ll[t] = i
		for j := 0; j < n; j++ {
			score -= cc[j] * (i - ll[j])
		}
		scores[i] = score
	}
	return scores
}
func makeGrid(h, w int) [][]int {
	index := make([][]int, h, h)
	data := make([]int, h*w, h*w)
	for i := 0; i < h; i++ {
		index[i] = data[i*w : (i+1)*w]
	}
	return index
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
func (seg segment) min(x, y int) int {
	if x < y {
		return x
	}
	return y
}
func (seg segment) max(x, y int) int {
	return -seg.min(-x, -y)
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
