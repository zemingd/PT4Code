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

func intMin(x, y int) int {
	return int(math.Min(float64(x), float64(y)))
}

func intMax(x, y int) int {
	return int(math.Max(float64(x), float64(y)))
}

func main() {
	sc.Split(bufio.ScanWords)

	N, M := scanInt(), scanInt()

	left, right := 1, N
	for i := 0; i < M; i++ {
		L, R := scanInt(), scanInt()
		left = intMax(left, L)
		right = intMin(right, R)
	}

	fmt.Println(intMax(right-left+1, 0))
}
