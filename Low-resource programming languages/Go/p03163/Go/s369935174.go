package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	run()
}

func run() {
	setSpace()
	n, limit := readN(), readN()
	as := make([]int, n)
	ws := make([]int, n)
	for i := 0; i < n; i++ {
		as[i], ws[i] = readN(), readN()
	}

	dp := map[int]int{}
	for i := 0; i < n; i++ {
		a, w := as[i], ws[i]
		for b, bw := range dp {
			if b+a > limit {
				continue
			}
			dp[b+a] = cmpMax(bw+w, dp[b+a])
		}
		if a > limit {
			continue
		}
		dp[a] = cmpMax(w, dp[a])
	}

	max := 0
	for _, w := range dp {
		if max < w {
			max = w
		}
	}
	fmt.Println(max)
}

func cmpMax(a, b int) int {
	if a < b {
		return b
	}
	return a
}

// ------以下、ユーティリティ------

var sc = bufio.NewScanner(os.Stdin)

func setSpace() {
	sc.Split(bufio.ScanWords)
}

func read() string {
	sc.Scan()
	return sc.Text()
}

func readN() int {
	n, err := strconv.Atoi(read())
	if err != nil {
		panic(err)
	}
	return n
}
