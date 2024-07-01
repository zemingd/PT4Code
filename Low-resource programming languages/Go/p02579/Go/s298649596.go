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
	ch := getNextInt(scanner) - 1
	cw := getNextInt(scanner) - 1
	dh := getNextInt(scanner) - 1
	dw := getNextInt(scanner) - 1
	ss := make([]string, h)
	for i := 0; i < h; i++ {
		ss[i] = getNextString(scanner)
	}
	g := makeGrid(h, w)
	for i := 0; i < h; i++ {
		for j := 0; j < w; j++ {
			g[i][j] = math.MaxInt32
		}
	}
	q := &queues{}
	heap.Push(q, queue{
		y: ch,
		x: cw,
		c: 0,
	})
	dy := [4]int{-1, 0, 0, 1}
	dx := [4]int{0, -1, 1, 0}
	for q.Len() > 0 {
		p := heap.Pop(q).(queue)
		if g[p.y][p.x] <= p.c {
			continue
		}
		g[p.y][p.x] = p.c
		for i := 0; i < 4; i++ {
			yy := p.y + dy[i]
			xx := p.x + dx[i]
			if yy < 0 || yy >= h {
				continue
			}
			if xx < 0 || xx >= w {
				continue
			}
			if ss[yy][xx] == '#' {
				continue
			}
			if g[yy][xx] <= p.c {
				continue
			}
			heap.Push(q, queue{
				y: yy,
				x: xx,
				c: p.c,
			})
		}
		for i := 0; i < 5; i++ {
			for j := 0; j < 5; j++ {
				if i == 2 && j == 2 {
					continue
				}
				yy := p.y + i - 2
				xx := p.x + j - 2
				if yy < 0 || yy >= h {
					continue
				}
				if xx < 0 || xx >= w {
					continue
				}
				if ss[yy][xx] == '#' {
					continue
				}
				if g[yy][xx] <= p.c+1 {
					continue
				}
				heap.Push(q, queue{
					y: yy,
					x: xx,
					c: p.c + 1,
				})
			}
		}
	}
	if g[dh][dw] == math.MaxInt32 {
		fmt.Fprintln(writer, -1)
		return
	}
	fmt.Fprintln(writer, g[dh][dw])
}

type queue struct {
	y, x, c int
}

func makeGrid(h, w int) [][]int {
	index := make([][]int, h, h)
	data := make([]int, h*w, h*w)
	for i := 0; i < h; i++ {
		index[i] = data[i*w : (i+1)*w]
	}
	return index
}

type queues []queue

func (h queues) Len() int { return len(h) }
func (h queues) Less(i, j int) bool {
	return h[i].c < h[j].c
}
func (h queues) Swap(i, j int) { h[i], h[j] = h[j], h[i] }
func (h *queues) Push(x interface{}) {
	*h = append(*h, x.(queue))
}
func (h *queues) Pop() interface{} {
	old := *h
	n := len(old)
	x := old[n-1]
	*h = old[0 : n-1]
	return x
}
