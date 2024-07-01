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
	n := nextInt()
	a := make([]int, n)
	for i := 0; i < n; i++ {
		a[i] = nextInt()
	}

	ans := 0.0
	for _, ai := range a {
		ans += 1 / float64(ai)
	}
	ans = 1 / ans
	fmt.Println(ans)

}
