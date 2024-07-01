package main

import (
	"bufio"
	"flag"
	"fmt"
	"math"
	"os"
	"strconv"
)

var scanner *bufio.Scanner

func nextInt() int {
	scanner.Scan()

	var i, _ = strconv.Atoi(scanner.Text())

	return i
}

func nextString() string {
	scanner.Scan()

	return scanner.Text()
}

func initScanner() {
	scanner = bufio.NewScanner(os.Stdin)
	scanner.Split(bufio.ScanWords)
}

// math functuon
func maxInt(a, b int) int {
	return int(math.Max(float64(a), float64(b)))
}
func minInt(a, b int) int {
	return int(math.Min(float64(a), float64(b)))
}

// 階乗
func factorial(n int64) int64 {
	if n < 1 {
		return 1
	}

	return n * factorial(n-1)
}

// 順列
func permutation(n, k int64) int64 {
	return factorial(n) / factorial(n-k)
}

// 組み合わせ
func combination(n, k int64) int64 {
	if k == 0 || k == n {
		return 1
	}

	return permutation(n, k) / factorial(k)
}

// logger
var isDebug = true

func log(format string, args ...interface{}) {
	if !isDebug {
		return
	}

	fmt.Printf(format+"\n", args...)
}

func main() {
	var debugFlag = flag.Bool("debug-mode", false, "debug flag")
	flag.Parse()
	isDebug = *debugFlag

	initScanner()

	var n, x = nextInt(), nextInt()

	var sum = 0
	var count = 1
	for i := 0; i < n+1; i++ {
		var l = nextInt()
		if sum+l > x {
			fmt.Println(count)
			return
		}

		count++
		sum += l
	}
}
