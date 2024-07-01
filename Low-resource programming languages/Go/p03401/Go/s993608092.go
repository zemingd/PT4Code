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

func intAbs(x int) int {
	return int(math.Abs(float64(x)))
}

func main() {
	sc.Split(bufio.ScanWords)

	N := scanInt()
	A := make([]int, N+2)
	for i := 1; i <= N; i++ {
		A[i] = scanInt()
	}

	sum := 0
	for i := 1; i <= N+1; i++ {
		sum += intAbs(A[i] - A[i-1])
	}

	for i := 1; i <= N; i++ {
		ans := sum - intAbs(A[i]-A[i-1]) - intAbs(A[i+1]-A[i]) + intAbs(A[i+1]-A[i-1])
		fmt.Println(ans)
	}
}
