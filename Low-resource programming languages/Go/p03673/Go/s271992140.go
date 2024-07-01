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
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	a := make([]int, n)
	for i := 0; i < n; i++ {
		a[i] = nextInt(sc)
	}
	ans := make([]int, n+12345)
	left, right := n/2, n/2+1
	for i := 0; i < n; i++ {
		if n%2 == i%2 { // nとiの偶奇が一致する場合は後ろに足す
			ans[right] = a[i]
			right++
		} else { // そうでない場合は前に足す
			ans[left] = a[i]
			left--
		}
	}
	for i := left + 1; i < right; i++ {
		fmt.Print(ans[i], " ")
	}
	fmt.Println()
}
