package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
	"strings"
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

func max(a int, b int) int {
	return int(math.Max(float64(a), float64(b)))
}

func min(a int, b int) int {
	return int(math.Min(float64(a), float64(b)))
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

const MaxBuf = 200100

var buf []byte = make([]byte, MaxBuf)

func main() {
	scanner.Split(bufio.ScanWords)
	scanner.Buffer(buf, MaxBuf)
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

	fmt.Fprintln(w, strings.Trim(fmt.Sprint(a), "[]"))
}
