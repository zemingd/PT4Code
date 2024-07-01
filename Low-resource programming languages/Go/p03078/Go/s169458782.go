package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"sort"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func scanInt() int {
	sc.Scan()
	i, err := strconv.Atoi(sc.Text())
	if err != nil {
		panic(err)
	}
	return i
}

func intMin(x, y int) int {
	return int(math.Min(float64(x), float64(y)))
}

func main() {
	sc.Split(bufio.ScanWords)

	X, Y, Z, K := scanInt(), scanInt(), scanInt(), scanInt()
	A, B, C := make([]int, X), make([]int, Y), make([]int, Z)
	for i := 0; i < X; i++ {
		A[i] = scanInt()
	}
	sort.Ints(A)
	for i := 0; i < Y; i++ {
		B[i] = scanInt()
	}
	sort.Ints(B)
	for i := 0; i < Z; i++ {
		C[i] = scanInt()
	}
	sort.Ints(C)

	N := intMin(X, K) * intMin(Y, K) * intMin(Z, K)
	ans := make([]int, N)
	tmp := 0
	for i := 0; i < intMin(X, K); i++ {
		for j := 0; j < intMin(Y, K); j++ {
			for k := 0; k < intMin(Z, K); k++ {
				ans[tmp] = A[X-1-i] + B[Y-1-j] + C[Z-1-k]
				tmp++
			}
		}
	}
	sort.Ints(ans)

	for i := 0; i < K; i++ {
		fmt.Println(ans[N-1-i])
	}
}
