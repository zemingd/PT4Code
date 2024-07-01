package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

var scanner = bufio.NewScanner(os.Stdin)

// const (
// 	initialBufSize = bufio.MaxScanTokenSize //65536
// 	maxBufSize     = 100000
// )
func main() {
	scanner.Split(bufio.ScanWords)
	// buf := make([]byte, initialBufSize)
	// scanner.Buffer(buf, maxBufSize)

	n, k := nextInt(), nextInt()

	sum := 0.0
	for i := 1; i <= n; i++ {
		if i >= k {
			sum += 1 / float64(n)
		} else {
			count := 0
			for j := i; j < k; j *= 2 {
				count++
			}
			sum += (1 / float64(n)) * math.Pow(0.5, float64(count))
		}
	}
	fmt.Println(sum)
}

func next() string {
	scanner.Scan()
	return scanner.Text()
}
func nextInt() int {
	i, err := strconv.Atoi(next())
	if err != nil {
		fmt.Println(err)
	}
	return i
}
