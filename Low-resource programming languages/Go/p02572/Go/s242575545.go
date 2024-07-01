package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func init() {
	buf := []byte{}
	sc.Buffer(buf, bufio.MaxScanTokenSize)
	sc.Split(bufio.ScanWords)
}

func next() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	a, _ := strconv.Atoi(next())
	return a
}

func main() {
	var MOD int64 = 1e9 + 7

	N := nextInt()
	A := make([]int64, N)
	for i := 0; i < N; i++ {
		A[i] = int64(nextInt())
	}

	var sum int64
	for i := 0; i < N; i++ {
		sum += A[i]
		sum %= MOD
	}

	var result int64
	for i := 0; i < N; i++ {
		sum -= A[i]
		if sum < 0 {
			sum += MOD
		}
		result += A[i] * sum
		result %= MOD
	}

	fmt.Println(result)
}
