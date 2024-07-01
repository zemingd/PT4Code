package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func maxScanTokenSize(size int) {
	buf := make([]byte, 0, size)
	sc.Buffer(buf, size)
}

func nextString() string {
	sc.Scan()
	return sc.Text()
}

func nextBytes() []byte {
	sc.Scan()
	return sc.Bytes()
}

func nextInt() int {
	s := nextString()
	i, _ := strconv.Atoi(s)
	return i
}

func nextInts(n int) []int {
	s := make([]int, n)
	for i := 0; i < n; i++ {
		s[i] = nextInt()
	}
	return s
}

func scanTwoInts() (int, int) {
	var a, b int
	fmt.Scan(&a, &b)
	return a, b
}

func scanThreeInts() (int, int, int) {
	var a, b, c int
	fmt.Scan(&a, &b, &c)
	return a, b, c
}

func sortInts(s []int, reversed bool) {
	if reversed {
		sort.SliceStable(s, func(i, j int) bool {
			return s[i] > s[j]
		})
	} else {
		sort.SliceStable(s, func(i, j int) bool {
			return s[i] < s[j]
		})
	}
}

func main() {
	// maxScanTokenSize(100000)
	// sc.Split(bufio.ScanWords)

	N, K := scanTwoInts()
	H := nextInts(N)
	sortInts(H, false)
	min := -1
	for i := 0; i < N-K+1; i++ {
		score := H[i+K-1] - H[i]
		if min < 0 || score < min {
			min = score
		}
	}
	fmt.Println(min)
}
