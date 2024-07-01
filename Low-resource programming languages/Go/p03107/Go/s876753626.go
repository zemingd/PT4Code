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

// N個のキューブが縦につまれてる
// len = N の文字S
// S = 01011110...
// 0と1が隣合わさると二つとも消せる
// 何個のキュープを消せる？
func run() {
	setSpace()
	s := read()
	var zero int
	var one int
	for i := 0; i < len(s); i++ {
		switch s[i] {
		case '0':
			zero++
		case '1':
			one++
		}
	}

	if zero > 0 && one > 0 {
		fmt.Println(min(zero, one))
	}
}

func min(x, y int) int {
	if x < y {
		return x
	}
	return y
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
