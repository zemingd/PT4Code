package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
	"strings"
)

const (
	// 初期バッファサイズ
	initialBufSize = 10000
	// バッファサイズの最大値。Scannerは必要に応じこのサイズまでバッファを大きくして各行をスキャンする。
	// この値がinitialBufSize以下の場合、Scannerはバッファの拡張を一切行わず与えられた初期バッファのみを使う。
	maxBufSize = 1000000
)

func main() {

	var wtr = bufio.NewWriter(os.Stdout)
	var sc = bufio.NewScanner(os.Stdin)
	buf := make([]byte, initialBufSize)
	sc.Buffer(buf, maxBufSize)

	var A, B, M int
	sc.Scan()
	temp := strings.Split(sc.Text(), " ")
	A, _ = strconv.Atoi(temp[0])
	B, _ = strconv.Atoi(temp[1])
	M, _ = strconv.Atoi(temp[2])

	a := make([]int, A)
	b := make([]int, B)

	amin := math.MaxInt64
	bmin := math.MaxInt64

	sc.Scan()
	for i, s := range strings.Split(sc.Text(), " ") {
		a[i], _ = strconv.Atoi(s)
		if a[i] < amin {
			amin = a[i]
		}
	}
	sc.Scan()
	for i, s := range strings.Split(sc.Text(), " ") {
		b[i], _ = strconv.Atoi(s)
		if b[i] < bmin {
			bmin = b[i]
		}
	}

	min := amin + bmin

	for j := 0; j < M; j++ {
		sc.Scan()
		temp := strings.Split(sc.Text(), " ")
		//fmt.Println(temp)
		x, _ := strconv.Atoi(temp[0])
		y, _ := strconv.Atoi(temp[1])
		c, _ := strconv.Atoi(temp[2])
		t := a[x-1] + b[y-1] - c
		if t < min {
			min = t
		}
	}

	fmt.Fprintln(wtr, min)
	_ = wtr.Flush()
}
