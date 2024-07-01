package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var (
	scanner = bufio.NewScanner(os.Stdin)
	w       = bufio.NewWriter(os.Stdout)
)

func readInt() (read int) {
	scanner.Scan()
	read, err := strconv.Atoi(scanner.Text())
	if err != nil {
		panic(err)
	}
	return
}

func max(x, y int) int {
	if x > y {
		return x
	}
	return y
}

func min(x, y int) int {
	if x < y {
		return x
	}
	return y
}

func equal(a, b []int) bool {
	if len(a) != len(b) {
		return false
	}
	for i, v := range a {
		if v != b[i] {
			return false
		}
	}
	return true
}

func main() {
	buf := make([]byte, 1024*1024)
	scanner.Buffer(buf, bufio.MaxScanTokenSize)
	scanner.Split(bufio.ScanWords)
	defer w.Flush()

	n := readInt()
	k := readInt()

	a := make([]int, n)
	for i := 0; i < n; i++ {
		a[i] = readInt()
	}

	for i := 0; i < k; i++ {
		b := make([]int, n+1)
		for j := 0; j < n; j++ {
			l := max(j-a[j], 0)
			r := min(j+a[j]+1, n)
			b[l]++
			b[r]--
		}
		for j := 0; j < n; j++ {
			b[j+1] += b[j]
		}
		if equal(a, b) {
			break
		}
		a = b[:len(b)-1]
	}

	for i := 0; i < n; i++ {
		fmt.Fprintf(w, "%d ", a[i])
	}
}
