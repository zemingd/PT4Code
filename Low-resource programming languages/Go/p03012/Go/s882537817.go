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
	var n int
	fmt.Scan(&n)
	input := nextLine()
	ws := intSlice(input)

	ans := (1 << 32)
	for i := 0; i < n-1; i++ {

		var s1, s2 int
		for j, v := range ws {
			if j <= i {
				s1 += v
			} else {
				s2 += v
			}
		}

		a := absSub(s1, s2)

		if a < ans {
			ans = a
		}
	}

	fmt.Println(ans)
}

func absSub(s1, s2 int) int {
	if s1 > s2 {
		return s1 - s2
	} else {
		return s2 - s1
	}
}
