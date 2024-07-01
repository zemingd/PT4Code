package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	N := readint()
	K := readint()
	P := make([]int, N)
	maxksum := 0
	maxleft := 0
	for i := 0; i < N; i++ {
		P[i] = readint()
		if K <= i+1 {
			left := i + 1 - K
			ksum := 0
			for j := left; j <= i; j++ {
				ksum += P[j]
			}
			if maxksum < ksum {
				maxksum = ksum
				maxleft = left
			}
		}
	}

	// 範囲内の期待値の最大値を求める
	var ans float64 = 0.0
	for i := 0; i < K; i++ {
		ans += (float64(P[i+maxleft]) + 1.0) / 2.0
	}
	fmt.Println(ans)
}

const (
	iobufsize = 1 * 1024 * 1024 // 1 MB
)

var stdinsc = func() *bufio.Scanner {
	sc := bufio.NewScanner(os.Stdin)
	sc.Buffer(make([]byte, iobufsize), iobufsize)
	sc.Split(bufio.ScanWords)
	return sc
}()

func readint() int {
	stdinsc.Scan()
	v, err := strconv.Atoi(stdinsc.Text())
	if err != nil {
		panic(err)
	}
	return v
}

func readstr() string {
	stdinsc.Scan()
	return stdinsc.Text()
}

func pow(x, y int) int {
	if y < 1 {
		return 1
	}
	return x * pow(x, y-1)
}

func min(x, y int) int {
	if x < y {
		return x
	}
	return y
}

func max(x, y int) int {
	if x > y {
		return x
	}
	return y
}
