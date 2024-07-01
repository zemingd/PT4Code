package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

var sc = bufio.NewScanner(os.Stdin)

func nextLine() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	line := nextLine()
	l := strings.Split(line, " ")
	N, _ := strconv.Atoi(l[0])
	K, _ := strconv.Atoi(l[1])
	M := uint64(1000000007)
	C := make([][]uint64, N+3)
	for i := 0; i < N+3; i++ {
		C[i] = make([]uint64, N+3)
	}
	C[1][1] = 1
	for i := 2; i < N+2; i++ {
		for j := 1; j < i+2; j++ {
			C[i][j] = C[i-1][j] + C[i-1][j-1]%M
		}
	}
	for i := 1; i <= K; i++ {
		fmt.Println((C[N-K+2][i+1] % M) * (C[K][i] % M) % M)
	}
}
