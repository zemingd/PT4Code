package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

var scanner = bufio.NewScanner(os.Stdin)

func main() {
	scanner.Split(bufio.ScanWords)
	n, m := scanInt(), scanInt()
	ans := make([]int, n)
	for i := 0; i < m; i++ {
		ans[i] = -1
	}

	for i := 0; i < m; i++ {
		s, c := scanInt(), scanInt()
		s--
		if v := ans[s]; c < v || v == -1 {
			ans[s] = c
		}
	}

	if ans[0] <= 0 {
		fmt.Print(-1)
		return
	}

	for i := 0; i < n; i++ {
		if ans[i] < 0 {
			fmt.Print(0)
		} else {
			fmt.Print(ans[i])
		}
	}
}

func scanInt() int {
	i, _ := strconv.Atoi(scanText())
	return i
}

func scanInts(size int) []int {
	ints := make([]int, size)
	for i := 0; i < size; i++ {
		ints[0] = scanInt()
	}
	return ints
}

func scanText() string {
	scanner.Scan()
	return scanner.Text()
}

func abs(n int) int {
	return int(math.Abs(float64(n)))
}
