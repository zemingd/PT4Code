package main

import (
	"bufio"
	"os"
	"strconv"
)

const NUM int = 1e9 + 7

var C [][]int

func main() {
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)

	sc.Scan()
	N, _ := strconv.Atoi(sc.Text())

	sc.Scan()
	K, _ := strconv.Atoi(sc.Text())

	C = make([][]int, N+1)
	for i := 0; i < N+1; i++ {
		C[i] = make([]int, i+2)
		C[i][0] = 1
		for j := 1; j <= i; j++ {
			C[i][j] = (C[i-1][j-1] + C[i-1][j]) % NUM
		}
	}

	out := bufio.NewWriter(os.Stdout)
	for i := 1; i <= K; i++ {
		result := comb(N-K+1, i) * comb(K-1, i-1) % NUM
		out.WriteString(strconv.Itoa(result) + "\n")
	}
	out.Flush()
}

func comb(n, m int) int {
	return C[n][m]
}
