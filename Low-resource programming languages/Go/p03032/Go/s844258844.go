package main

import (
	"bufio"
	"container/heap"
	"fmt"
	"os"
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
	n := getNextInt(scanner)
	k := getNextInt(scanner)
	vv := make([]int, n)
	for i := 0; i < n; i++ {
		vv[i] = getNextInt(scanner)
	}
	var ans int
	for i := 0; i <= n && i <= k; i++ {
		for j := 0; i+j <= n && i+j <= k; j++ {
			ss := &stones{}
			heap.Init(ss)
			sum := 0
			for ii := 0; ii < i; ii++ {
				heap.Push(ss, vv[ii])
				sum += vv[ii]
			}
			for jj := 0; jj < j; jj++ {
				heap.Push(ss, vv[n-1-jj])
				sum += vv[n-1-jj]
			}
			for kk := 0; ss.Len() > 0 && kk < k-(i+j); kk++ {
				sum -= heap.Pop(ss).(int)
			}
			if ans < sum {
				ans = sum
			}
		}
	}
	fmt.Fprintln(writer, ans)
}

type stones []int

func (h stones) Len() int { return len(h) }
func (h stones) Less(i, j int) bool {
	return h[i] < h[j]
}
func (h stones) Swap(i, j int) { h[i], h[j] = h[j], h[i] }
func (h *stones) Push(x interface{}) {
	*h = append(*h, x.(int))
}
func (h *stones) Pop() interface{} {
	old := *h
	n := len(old)
	x := old[n-1]
	*h = old[0 : n-1]
	return x
}
