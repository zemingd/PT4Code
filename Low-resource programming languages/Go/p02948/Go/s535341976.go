package main

import (
	"bufio"
	"container/heap"
	"fmt"
	"os"
	"sort"
	"strconv"
)

func getScanner(fp *os.File) *bufio.Scanner {
	scanner := bufio.NewScanner(fp)
	scanner.Split(bufio.ScanWords)
	scanner.Buffer(make([]byte, 500001), 500000)
	return scanner
}

func getNextString(scanner *bufio.Scanner) string {
	scanner.Scan()
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
	if len(os.Args) > 1 {
		fp, _ = os.Open(os.Args[1])
	}

	scanner := getScanner(fp)
	writer := bufio.NewWriter(os.Stdout)

	n := getNextInt(scanner)
	m := getNextInt(scanner)
	jobs := make(Jobs, n)
	ih := &IntHeap{}
	heap.Init(ih)

	for i := 0; i < n; i++ {
		jobs[i].a = m - getNextInt(scanner)
		jobs[i].b = getNextInt(scanner)
	}
	sort.Sort(jobs)
	ii := 0
	for i := 1; i <= m; i++ {
		for ii < n && jobs[ii].a >= 0 && jobs[ii].a < i {
			heap.Push(ih, jobs[ii].b)
			ii++
		}
		for ih.Len() > i {
			heap.Pop(ih)
		}
	}

	ans := 0
	for ih.Len() > 0 {
		p := heap.Pop(ih).(int)
		ans += p
	}

	fmt.Fprintln(writer, ans)
	writer.Flush()
}

type Job struct {
	a, b, c int
}

type Jobs []Job

func (a Jobs) Len() int      { return len(a) }
func (a Jobs) Swap(i, j int) { a[i], a[j] = a[j], a[i] }
func (a Jobs) Less(i, j int) bool {
	if a[i].a == a[j].a {
		return a[i].b < a[j].b
	}
	return a[i].a < a[j].a
}

type IntHeap []int

func (h IntHeap) Len() int           { return len(h) }
func (h IntHeap) Less(i, j int) bool { return h[i] < h[j] }
func (h IntHeap) Swap(i, j int)      { h[i], h[j] = h[j], h[i] }
func (h *IntHeap) Push(x interface{}) {
	*h = append(*h, x.(int))
}
func (h *IntHeap) Pop() interface{} {
	old := *h
	n := len(old)
	x := old[n-1]
	*h = old[0 : n-1]
	return x
}
