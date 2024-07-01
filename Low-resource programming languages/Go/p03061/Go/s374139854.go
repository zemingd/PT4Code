package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
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

func gcd(a, b int) int {
	for b > 0 {
		a, b = b, a%b
	}
	return a
}

func intMax(x, y int) int {
	return int(math.Max(float64(x), float64(y)))
}

func main() {
	sc.Split(bufio.ScanWords)

	N := scanInt()
	A := make([]int, N)
	for i := 0; i < N; i++ {
		A[i] = scanInt()
	}

	L, R := make([]int, N), make([]int, N)
	L[0], R[N-1] = A[0], A[N-1]
	for i := 1; i < N; i++ {
		L[i] = gcd(L[i-1], A[i])
		R[N-1-i] = gcd(R[N-i], A[N-1-i])
	}

	ans := intMax(L[N-2], R[1])
	for i := 1; i < N-1; i++ {
		ans = intMax(ans, gcd(L[i-1], R[i+1]))
	}
	fmt.Println(ans)
}
