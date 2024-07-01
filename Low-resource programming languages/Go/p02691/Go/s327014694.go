package main

import (
	"bufio"
	"fmt"
	"math"
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

func main() {
	scanner.Split(bufio.ScanWords)
	defer w.Flush()

	n := readInt()
	A := make([]int, n)
	min := 0
	max := 0
	for i := 0; i < n; i++ {
		A[i] = readInt()
		min = int(math.Min(float64(min), float64(A[i])))
		max = int(math.Max(float64(max), float64(A[i])))
	}

	cnt := 0
	for i := 0; i < n; i++ {
		for j := i + 1; j < i+2*max+1 && j < n; j++ {
			if int(math.Abs(float64(i-j))) == A[i]+A[j] {
				cnt++
			}
		}
	}
	fmt.Fprintln(w, cnt)
}
