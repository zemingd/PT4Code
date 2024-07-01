package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func scanInt() int {
	num, _ := strconv.Atoi(scanString())
	return num
}

func scanString() string {
	sc.Scan()
	return sc.Text()
}

func scanInts(n int) []int {
	sl := make([]int, n)
	for i := range sl {
		sl[i] = scanInt()
	}
	return sl
}

func scanStrings(n int) []string {
	sl := make([]string, n)
	for i := range sl {
		sl[i] = scanString()
	}
	return sl
}

func init() {
	sc.Split(bufio.ScanWords)
}

func main() {
	N, M := scanInt(), scanInt()
	min, max := 1, N
	for i := 0; i < M; i++ {
		min_tmp, max_tmp := scanInt(), scanInt()
		if min_tmp > min {
			min = min_tmp
		}
		if max_tmp < max {
			max = max_tmp
		}
	}
	fmt.Println(max - min + 1)
}
