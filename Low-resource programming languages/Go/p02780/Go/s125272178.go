package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

var sc = bufio.NewScanner(os.Stdin)

func main() {
	// Code for D - Dice in Line
	var N, K int
	fmt.Scan(&N, &K)

	sc.Split(bufio.ScanWords)
	p := make([]int, N)
	for i := 0; i < N; i++ {
		p[i] = nextInt()
	}

	var max float64
	var ans float64
	for i := 0; i < N-K+1; i++ {
		ans = 0
		for j := 0; j < K; j++ {
			ans += (float64(p[i+j]) + 1.0) / 2.0
		}

		if max < ans {
			max = ans
		}
	}
	fmt.Println(max)
}
