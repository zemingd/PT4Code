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

	sc.Scan()
	N, _ := strconv.Atoi(sc.Text())

	sc.Scan()
	K, _ := strconv.Atoi(sc.Text())

	for i := 0; i < K; i++ {
		fmt.Println(conbination(N-K+1, i+1) * conbination(K-1, i) % (1000000000 + 7))
	}
}

func conbination(n, m int) int {
	if n == 0 || m == 0 {
		return 1
	}
	return permutation(n, m) / permutation(m, m)
}

func permutation(n, count int) int {
	result := 1
	for i := 0; i < count; i++ {
		result *= n - i
	}
	return result
}
