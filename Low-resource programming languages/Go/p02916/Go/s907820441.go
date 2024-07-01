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
	var a [20]int
	var b [20]int
	var c [20]int
	for i := 0; i < n; i++ {
		a[i] = nextInt()
	}
	for i := 0; i < n; i++ {
		b[i] = nextInt()
	}
	for i := 0; i < n-1; i++ {
		c[i] = nextInt()
	}
	// fmt.Println(a, b, c)
	prev := -1
	ans := 0
	for i := 0; i < n; i++ {
		ai := a[i]
		ans += b[ai-1]
		if prev+1 == ai {
			ans += c[prev-1]
		}
		prev = ai
		// fmt.Println(ans)
	}
	fmt.Println(ans)
}
