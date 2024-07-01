package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

// 一行の文字列を読み込む
func nextLine() string {
	sc.Scan()
	return sc.Text()
}

// 数値（INT）を読み込む
func nextInt() int {
	sc.Scan()
	i, _ := strconv.Atoi(sc.Text())
	return i
}

func main() {
	sc.Split(bufio.ScanWords)
	K, X := nextInt(), nextInt()
	// fmt.Println(K, X)
	start := X - (K - 1)
	end := X + (K - 1)
	for i := start; i <= end; i++ {
		fmt.Printf("%d ", i)
	}
}
