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

	var max int
	var maxNum int
	var count int
	for i := 0; i < N-K+1; i++ {
		count = 0
		for j := 0; j < K; j++ {
			count += p[i+j]
		}

		if max < count {
			max = count
			maxNum = i
		}
	}

	var ans float64
	for i := 0; i < K; i++ {
		ans += (float64(p[maxNum+i]) + 1.0) / 2.0
	}
	fmt.Println(ans)
}
