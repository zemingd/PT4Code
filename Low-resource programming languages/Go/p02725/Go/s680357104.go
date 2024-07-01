package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextString() string {
	sc.Scan()
	return sc.Text()
}

func maxLenPoint(B []int, length int) (int, int, int) {
	maxlen := 0
	var diff int
	var v1, v2 int
	for i := len(B) - 1; i > 0; i-- {
		diff = B[i] - B[i-1]
		if diff > maxlen {
			maxlen = diff
			v1 = i - 1 //low
			v2 = i     //high
		}
	}

	// circle check
	diff = length - B[len(B)-1]
	if diff > maxlen {
		maxlen = diff
		v1 = 0
		v2 = len(B)
	}

	return maxlen, v1, v2

}

func main() {
	var K, N int
	var A []int

	fmt.Scan(&K, &N)

	sc.Split(bufio.ScanWords)

	A = make([]int, N)
	for i := 0; i < N; i++ {
		A[i], _ = strconv.Atoi(nextString())
	}

	l, _, _ := maxLenPoint(A, K)
	fmt.Println(K - l)

}
