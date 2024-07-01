package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func nextInt(sc *bufio.Scanner) int {
	sc.Scan()
	t, _ := strconv.Atoi(sc.Text())
	return t
}

func main() {
	var n int
	fmt.Scan(&n)
	a := make(map[int]int, 0)
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	for i := 0; i < n; i++ {
		var t int
		t = nextInt(sc)
		if a[t] > 0 {
			a[t] = 0
		} else {
			a[t] = 1
		}
	}
	// fmt.Println("a", a)
	ans := 0
	for _, v := range a {
		if v > 0 {
			ans++
		}
	}
	fmt.Println(ans)
}
