package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func main() {
	var wtr = bufio.NewWriter(os.Stdout)
	var scanner = bufio.NewScanner(os.Stdin)
	scanner.Split(bufio.ScanLines)
	var K, N int
	if scanner.Scan() {
		str := scanner.Text()
		cols := strings.Split(str, " ")
		K, _ = strconv.Atoi(cols[0])
		N, _ = strconv.Atoi(cols[1])
	}
	_ = K
	A := make([]int, N)
	if scanner.Scan() {
		str := scanner.Text()
		cols := strings.Split(str, " ")
		for i := 0; i < N; i++ {
			A[i], _ = strconv.Atoi(cols[i])
		}
	}
	var tmp, min int
	min = 1000000
	for i := 0; i < N; i++ {
		if i == 0 {
			tmp = A[N-1] - A[0]
		} else {
			tmp = K - (A[i] - A[i-1])
		}
		if tmp < min {
			min = tmp
		}
	}

	fmt.Fprintln(wtr, min)
	_ = wtr.Flush()
}

func max(a int, b int) int {
	if a > b {
		return a
	} else {
		return b
	}
}

func min(a int, b int) int {
	if a < b {
		return a
	} else {
		return b
	}
}
