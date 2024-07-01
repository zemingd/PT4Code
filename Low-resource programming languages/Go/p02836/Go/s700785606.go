package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

// readi Scannerから1単語取り出して数値に変換して取得する
func readi(sc *bufio.Scanner) int {
	sc.Scan()
	t, _ := strconv.Atoi(sc.Text())
	return t
}

// readt Scannerから1単語取り出して取得する
func readt(sc *bufio.Scanner) string {
	sc.Scan()
	return sc.Text()
}

func main() {
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	S := readt(sc)
	cnt := 0
	len := len(S)
	for i := 0; i*2 < len; i++ {
		if S[i] != S[len-i-1] {
			cnt++
		}
	}
	fmt.Println(cnt)
}
