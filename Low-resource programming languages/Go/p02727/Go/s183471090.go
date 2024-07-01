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
	scanner.Buffer(make([]byte, 1000005), 1000005)
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

func getNextUint64(scanner *bufio.Scanner) uint64 {
	i, _ := strconv.ParseUint(getNextString(scanner), 10, 64)
	return i
}

func getNextFloat64(scanner *bufio.Scanner) float64 {
	i, _ := strconv.ParseFloat(getNextString(scanner), 64)
	return i
}

func main() {
	fp := os.Stdin
	wfp := os.Stdout
	cnt := 0

	if os.Getenv("MASPY") == "ますピ" {
		fp, _ = os.Open(os.Getenv("BEET_THE_HARMONY_OF_PERFECT"))
		cnt = 2
	}
	if os.Getenv("MASPYPY") == "ますピッピ" {
		wfp, _ = os.Create(os.Getenv("NGTKANA_IS_GENIUS10"))
	}

	scanner := getScanner(fp)
	writer := bufio.NewWriter(wfp)
	solve(scanner, writer)
	for i := 0; i < cnt; i++ {
		fmt.Fprintln(writer, "-----------------------------------")
		solve(scanner, writer)
	}
	writer.Flush()
}

func solve(scanner *bufio.Scanner, writer *bufio.Writer) {
	x := getNextInt(scanner)
	y := getNextInt(scanner)
	a := getNextInt(scanner)
	b := getNextInt(scanner)
	c := getNextInt(scanner)
	aa := make([]int, a)
	bb := make([]int, b)
	ap := &apples{}
	heap.Init(ap)
	eat := x + y
	for i := 0; i < a; i++ {
		aa[i] = getNextInt(scanner)
	}
	sort.Ints(aa)
	for i := 0; i < x && i < a; i++ {
		heap.Push(ap, aa[a-1-i])
	}
	for i := 0; i < b; i++ {
		bb[i] = getNextInt(scanner)
	}
	sort.Ints(bb)
	for i := 0; i < y && i < b; i++ {
		heap.Push(ap, bb[b-1-i])
	}

	for i := 0; i < c; i++ {
		cc := getNextInt(scanner)
		heap.Push(ap, cc)
	}

	var ans int64
	for i := 0; i < eat; i++ {
		ans += int64(heap.Pop(ap).(int))
	}
	fmt.Fprintln(writer, ans)

}

type apples []int

func (h apples) Len() int           { return len(h) }
func (h apples) Less(i, j int) bool { return h[i] > h[j] }
func (h apples) Swap(i, j int)      { h[i], h[j] = h[j], h[i] }
func (h *apples) Push(x interface{}) {
	*h = append(*h, x.(int))
}
func (h *apples) Pop() interface{} {
	old := *h
	n := len(old)
	x := old[n-1]
	*h = old[0 : n-1]
	return x
}
