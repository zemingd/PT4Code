package main

import (
	"bufio"
	"fmt"
	"os"
	// "sort"
	"strconv"
)

var scanner = bufio.NewScanner(os.Stdin)
var rdr = bufio.NewReaderSize(os.Stdin, 0x100000)
var wtr = bufio.NewWriter(os.Stdout)

// SplitSpace 空白で分割設定
func SplitSpace() {
	scanner.Split(bufio.ScanWords)
}

// NextLine 標準入力から１行読み込む
func NextLine() string {
	scanner.Scan()
	return scanner.Text()
}

// NextInt 標準入力から数値を一つ読み込む
func NextInt() int {
	n, _ := strconv.Atoi(NextLine())
	return n
}

// ReadLine 標準入力から長めの1行を読み込む
func ReadLine() string {
	buf := make([]byte, 0, 0x100000)
	for {
		line, isPrefix, err := rdr.ReadLine()
		if err != nil {
			panic(err)
		}
		buf = append(buf, line...)
		if !isPrefix {
			break
		}
	}
	return string(buf)
}

func Abs(a int) int {
	if a < 0 {
		return -a
	}
	return a
}

func Min(a, b int) int {
	if a > b {
		return b
	}
	return a
}

func Max(a, b int) int {
	if a < b {
		return b
	}
	return a
}

func ChMin(a *int, b int) bool {
	if *a > b {
		*a = b
		return true
	}
	return false
}

func ChMax(a *int, b int) bool {
	if *a < b {
		*a = b
		return true
	}
	return false
}

//================

func main() {
	SplitSpace()
	n := NextInt()
	k := NextInt()
	h := make([]int, n+k)
	for i := 0; i < n; i++ {
		h[i] = NextInt()
	}
	dp := make([]int, n+k)

	for i := 1; i < n; i++ {
		dp[i] = 1 << 29
	}
	for i := 0; i < n; i++ {
		for j := 1; j <= k; j++ {
			ChMin(&dp[i+j], dp[i]+Abs(h[i]-h[i+j]))
		}
	}
	fmt.Println(dp[n-1])
}
