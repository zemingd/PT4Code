package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func min(nums ...int) int {
	ret := nums[0]
	for _, v := range nums {
		if v < ret {
			ret = v
		}
	}
	return ret
}

func abs(x int) int {
	if x < 0 {
		return -x
	}
	return x
}

func main() {
	sc.Split(bufio.ScanWords)
	sc.Buffer(make([]byte, initialBufSize), maxBufSize)
	defer wt.Flush()

	n, x, y := nextInt(), nextInt()-1, nextInt()-1

	// d := make([][]int, n)
	// for i := range d {
	// 	d[i] = make([]int, n)
	// }
	// for i := range d {
	// 	if i < n-1 {
	// 		d[i][i+1] = 1
	// 	}
	// 	for j := i + 2; j < n; j++ {
	// 		d[i][j] = 2 * n
	// 	}
	// }
	// d[x][y] = 1

	ans := map[int]int{}
	for i := 0; i < n; i++ {
		for j := i + 1; j < n; j++ {
			// if i <= x && y <= j {
			// 	d[i][j] = min(d[i][j], d[i][j-1]+1, d[i][x]+1+d[y][j])
			// } else {
			// 	d[i][j] = min(d[i][j], d[i][j-1]+1)
			// }
			d := min(j-i, abs(x-i)+1+abs(y-j))
			ans[d]++
		}
		// puts(d[i])
	}

	for i := 1; i < n; i++ {
		puts(ans[i])
	}
}

const (
	initialBufSize = 100000
	maxBufSize     = 10000000
)

var (
	sc = bufio.NewScanner(os.Stdin)
	wt = bufio.NewWriter(os.Stdout)
)

func next() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	i, _ := strconv.Atoi(next())
	return i
}

func nextFloat64() float64 {
	f, _ := strconv.ParseFloat(next(), 64)
	return f
}

func nextInts(n int) []int {
	slice := make([]int, n)
	for i := 0; i < n; i++ {
		slice[i] = nextInt()
	}
	return slice
}

func nextFloat64s(n int) []float64 {
	slice := make([]float64, n)
	for i := 0; i < n; i++ {
		slice[i] = nextFloat64()
	}
	return slice
}

func putf(format string, a ...interface{}) {
	fmt.Fprintf(wt, format, a...)
}

func puts(a ...interface{}) {
	fmt.Fprintln(wt, a...)
}
