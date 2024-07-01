package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var stdin = initStdin()

func initStdin() *bufio.Scanner {
	var stdin = bufio.NewScanner(os.Stdin)
	stdin.Split(bufio.ScanWords)
	return stdin
}

func nextString() string {
	stdin.Scan()
	return stdin.Text()
}

func nextInt() int {
	i, _ := strconv.Atoi(nextString())
	return i
}

func nextInt64() int64 {
	i, _ := strconv.ParseInt(nextString(), 10, 64)

	return i
}

func main() {
	n := nextInt()
	weights := make([]int, n)

	left := 0
	right := 0

	for i := 0; i < n; i++ {
		weights[i] = nextInt()
		right += weights[i]
	}
	min := right

	for t := 0; t < n; t++ {
		var abs int

		if left < right {
			abs = right - left
		} else {
			abs = left - right
		}
		if min > abs {
			min = abs
		}
		right -= weights[t]
		left += weights[t]
	}

	fmt.Println(min)
}
