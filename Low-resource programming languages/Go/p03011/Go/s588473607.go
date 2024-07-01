package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
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

// スペース区切りの文字列から int のスライスを得る
func intSlice(s string) []int {
	ss := strings.Split(s, " ")
	res := make([]int, len(ss))
	for i, v := range ss {
		iv, _ := strconv.Atoi(v)
		res[i] = iv
	}

	return res
}

func main() {
	s := nextLine()
	keiro := intSlice(s)
	ans := (1 << 30)
	for i := 0; i < len(keiro); i++ {
		for j := 0; j < len(keiro); j++ {
			if i != j {
				t := keiro[i] + keiro[j]
				if t < ans {
					ans = t
				}
			}
		}
	}

	fmt.Println(ans)
}
