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

func main() {
	sc.Split(bufio.ScanWords)

	N := scanInt()
	B := make([]int, N-1)
	for i := 0; i < N-1; i++ {
		B[i] = scanInt()
	}

	ans := B[0] + B[N-2]
	for i := 0; i < N-2; i++ {
		ans += intMin(B[i], B[i+1])
	}
	fmt.Println(ans)
}
