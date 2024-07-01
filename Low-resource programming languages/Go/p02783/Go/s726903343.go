package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var scanner = bufio.NewScanner(os.Stdin)
var rdr = bufio.NewReaderSize(os.Stdin, 0x100000)

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

func Abs(x int) int {
	if x < 0 {
		return -x
	}
	return x
}

//================

func main() {
	SplitSpace()
	h := NextInt()
	a := NextInt()
	fmt.Println(((h + a - 1) / a))
}
