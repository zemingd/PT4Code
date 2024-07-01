package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

const NUM int = 1e9 + 7

func main() {
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)

	sc.Scan()
	N, _ := strconv.Atoi(sc.Text())

	sc.Scan()
	K, _ := strconv.Atoi(sc.Text())

	for i := 1; i <= K; i++ {
		fmt.Println(comb(N-K+1, i) * comb(K-1, i-1) % NUM)
	}
}

func comb(n, m int) int {
	if m == 0 {
		return 1
	}
	return comb(n-1, m-1) * n / m % NUM
}
