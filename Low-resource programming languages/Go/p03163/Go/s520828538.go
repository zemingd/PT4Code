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
	dp := make([][]int, n+1)
	// dp[i][sum_w] = v の最大値
	// dp[i][j] = i 番目までの品物を、重さを j 以下になるように選んだときの価値の最大値
	// 品物を選ばない & 品物を選ぶ のふた通りで DP を更新する
	dp[0] = make([]int, limit+1)
	for i := 0; i < n; i++ {
		w, v := readN(), readN()
		dp[i+1] = make([]int, limit+1)
		for sumW := 0; sumW <= limit; sumW++ {
			// まずは普通に品物を選択せずに更新する
			chmax(&dp[i+1][sumW], dp[i][sumW])
			if sumW-w >= 0 {
				// 品物を選択した場合で更新する
				chmax(&dp[i+1][sumW], dp[i][sumW-w]+v)
			}
		}
	}

	fmt.Println(dp[n][limit])
}

func chmax(a *int, b int) {
	if *a > b {
		return
	}
	*a = b
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
