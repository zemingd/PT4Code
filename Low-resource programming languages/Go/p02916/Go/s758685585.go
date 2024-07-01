package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	var n int
	fmt.Scan(&n)
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	as := make([]int, n)
	for i := range as {
		sc.Scan()
		as[i], _ = strconv.Atoi(sc.Text())
		as[i]--
	}
	bs := make([]int, n)
	for i := range bs {
		sc.Scan()
		bs[i], _ = strconv.Atoi(sc.Text())
	}
	cs := make([]int, n-1)
	for i := range cs {
		sc.Scan()
		cs[i], _ = strconv.Atoi(sc.Text())
	}
	var ans int
	for i := range as {
		a := as[i]
		ans += bs[a]
		if i > 0 && as[i-1]+1 == a {
			ans += cs[a-1]
		}
	}
	fmt.Println(ans)
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}

func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}

func abs(a int) int {
	if a < 0 {
		return -a
	}
	return a
}
