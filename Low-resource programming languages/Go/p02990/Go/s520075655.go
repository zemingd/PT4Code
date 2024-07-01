package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)

	NUM := 1000000000 + 7

	sc.Scan()
	N, _ := strconv.Atoi(sc.Text())

	sc.Scan()
	K, _ := strconv.Atoi(sc.Text())

	for i := 0; i < K; i++ {
		fmt.Println(comb(N-K+1, i+1) * comb(K-1, i) % NUM)
	}
}

func comb(n, m int) int {
	if n == 0 || m == 0 {
		return 1
	}
	return comb(n-1, m-1) * n / m
}
