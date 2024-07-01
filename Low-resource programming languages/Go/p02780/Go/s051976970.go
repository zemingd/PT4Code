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
	for i := 0; i < N; i++ {
		P[i] = readint()
	}

	// 隣接K個のサイコロの合計値が最も大きい範囲を探す
	maxksum := 0
	maxleft := 0
	for i := 0; i+K-1 < N; i++ {
		ksum := 0
		//fmt.Println(P[i : i+K])
		for j := i; j < i+K; j++ {
			ksum += P[j]
		}
		//fmt.Println(ksum)
		if maxksum < ksum {
			maxksum = ksum
			maxleft = i
		}
	}
	//fmt.Println(maxksum, maxleft)

	// 範囲内の期待値の最大値を求める
	E := make([]float64, K)
	var ans float64 = 0.0
	for i := 0; i < K; i++ {
		n := float64(P[i+maxleft])
		E[i] = (n + 1) / 2
		ans += E[i]
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
