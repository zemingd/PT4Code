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
	a := make([]int, n)
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	for i := 0; i < n; i++ {
		a[i] = nextInt(sc)
	}
	ans := make([]int, n)
	var j, k int
	if len(a)%2 == 0 {
		j, k = n/2, n/2-1
		for i := 0; i < n; i++ {
			if i%2 == 0 {
				ans[j] = a[i]
				j++
			} else {
				ans[k] = a[i]
				k--
			}
		}
	} else {
		ans[n/2] = a[0]
		j, k = n/2+1, n/2-1
		for i := 1; i < n; i++ {
			if i%2 == 0 {
				ans[k] = a[i]
				k--
			} else {
				ans[j] = a[i]
				j++
			}
		}
	}
	for i := 0; i < len(ans); i++ {
		fmt.Print(ans[i], " ")
	}
	fmt.Println()
}
