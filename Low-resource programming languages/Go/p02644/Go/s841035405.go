package main

import (
	"bufio"
	"container/heap"
	"fmt"
	"math"
	"os"
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
	h := getNextInt(scanner)
	w := getNextInt(scanner)
	k := getNextInt64(scanner)
	xx := make([]int, 2)
	yy := make([]int, 2)
	for i := 0; i < 2; i++ {
		xx[i] = getNextInt(scanner) - 1
		yy[i] = getNextInt(scanner) - 1
	}
	ss := make([]string, h)
	for i := 0; i < h; i++ {
		ss[i] = getNextString(scanner)
	}
	dd := makeGrid(h, w)
	for i := 0; i < h; i++ {
		for j := 0; j < w; j++ {
			for d := 0; d < 4; d++ {
				dd[i][j][d] = math.MaxInt64
			}
		}
	}
	dk := &daikes{}
	for i := 0; i < 4; i++ {
		heap.Push(dk, newDaike(xx[0], yy[0], i, 0))
	}
	dy := [4]int{-1, 0, 0, 1}
	dx := [4]int{0, -1, 1, 0}
	for dk.Len() > 0 {
		p := heap.Pop(dk).(daike)
		if dd[p.x][p.y][p.d] <= p.c {
			continue
		}
		dd[p.x][p.y][p.d] = p.c
		for i := 0; i < 4; i++ {
			x := p.x + dx[i]
			y := p.y + dy[i]
			if x < 0 || x >= h {
				continue
			}
			if y < 0 || y >= w {
				continue
			}
			if ss[x][y] == '@' {
				continue
			}
			if p.d == i {
				heap.Push(dk, newDaike(x, y, i, p.c+1))
				continue
			}
			heap.Push(dk, newDaike(x, y, i, (p.c+k-1)/k*k+1))
		}
	}
	var ans int64
	ans = math.MaxInt64
	for i := 0; i < 4; i++ {
		if ans > dd[xx[1]][yy[1]][i] {
			ans = dd[xx[1]][yy[1]][i]
		}
	}
	if ans == math.MaxInt64 {
		fmt.Fprintln(writer, -1)
		return
	}
	fmt.Fprintln(writer, (ans+k-1)/k)
}

type daike struct {
	x, y, d int
	c       int64
}

func newDaike(x, y, d int, c int64) daike {
	return daike{x: x, y: y, d: d, c: c}
}

type daikes []daike

func (h daikes) Len() int { return len(h) }
func (h daikes) Less(i, j int) bool {
	return h[i].c < h[j].c
}
func (h daikes) Swap(i, j int) { h[i], h[j] = h[j], h[i] }
func (h *daikes) Push(x interface{}) {
	*h = append(*h, x.(daike))
}
func (h *daikes) Pop() interface{} {
	old := *h
	n := len(old)
	x := old[n-1]
	*h = old[0 : n-1]
	return x
}

type direction [4]int64

func makeGrid(h, w int) [][]direction {
	index := make([][]direction, h, h)
	data := make([]direction, h*w, h*w)
	for i := 0; i < h; i++ {
		index[i] = data[i*w : (i+1)*w]
	}
	return index
}
