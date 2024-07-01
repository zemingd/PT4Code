package main

import (
	"bufio"
	"fmt"
	"os"
)

var sc = bufio.NewScanner(os.Stdin)

// 一行読み出し
func nextLine() string {
	sc.Scan()
	return sc.Text()
}

// 文字列リバース関数
func strReverse(s string) string {
	rs := []rune(s)
	for i, j := 0, len(s)-1; i < j; i, j = i+1, j-1 {
		rs[i], rs[j] = rs[j], rs[i]
	}
	return string(rs)
}

// 引数個の数値を読み込む
func scanNums(len int) (nums []int) {
	var num int
	for i := 0; i < len; i++ {
		fmt.Scan(&num)
		nums = append(nums, num)
	}
	return
}

func main() {
	var n, a, b int
	fmt.Scan(&n, &a, &b)

	train := a * n
	taxi := b

	if train > taxi {
		fmt.Println(taxi)
	} else {
		fmt.Println(train)
	}

}
