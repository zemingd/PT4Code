package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

const NUM int64 = 1e9 + 7

func main() {
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)

	sc.Scan()
	n, _ := strconv.Atoi(sc.Text())
	N := int64(n)

	sc.Scan()
	k, _ := strconv.Atoi(sc.Text())
	K := int64(k)

	for i := int64(1); i <= K; i++ {
		fmt.Println(comb(N-K+1, i) * comb(K-1, i-1) % NUM)
	}
}

func comb(n, m int64) int64 {
	if n < 0 || m < 0 || n < m {
		return 0
	}

	if n == m || n == 0 || m == 0 {
		return 1
	}

	if m == 1 {
		return n
	}

	preComb := comb(n-1, m-1)
	newComb := preComb * n / m
	return newComb % NUM
}
