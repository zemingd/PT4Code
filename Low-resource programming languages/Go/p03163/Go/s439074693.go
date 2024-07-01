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
	n, limit := int(readN()), readN()
	as := make([]int64, n)
	ws := make([]int64, n)
	for i := 0; i < n; i++ {
		as[i], ws[i] = readN(), readN()
	}

	dp := map[int64]int64{}
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

	max := int64(0)
	for _, w := range dp {
		if max < w {
			max = w
		}
	}
	fmt.Println(max)
}

func cmpMax(a, b int64) int64 {
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

func readN() int64 {
	n, err := strconv.ParseInt(read(), 10, 64)
	if err != nil {
		panic(err)
	}
	return n
}
