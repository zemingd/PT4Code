package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func nextInt(sc *bufio.Scanner) int {
	sc.Scan()
	t, _ := strconv.Atoi(sc.Text())
	return t
}

func main() {
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	N := nextInt(sc)
	A := make([]int, N)
	for i := range A {
		A[i] = nextInt(sc)
	}
	var ans int
	const mod = int(1e9) + 7
	// O(N^2) のロジック
	for i := 0; i < N-1; i++ {
		for j := i + 1; j < N; j++ {
			t := (A[i] ^ A[j]) % mod
			ans += t
			ans %= mod
		}
	}
	fmt.Println(ans)
}
