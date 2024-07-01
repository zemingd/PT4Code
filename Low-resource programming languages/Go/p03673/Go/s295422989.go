package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func reverse(a []int) []int {
	var r []int
	for i := len(a) - 1; i >= 0; i-- {
		r = append(r, a[i])
	}
	return r
}

func main() {
	var n int
	fmt.Scan(&n)
	a := make([]int, n)
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	for i := range a {
		sc.Scan()
		a[i], _ = strconv.Atoi(sc.Text())
	}
	var ans []int
	for i := range a {
		if len(a)%2 == 0 {
			if i%2 != 0 {
				ans = append([]int{a[i]}, ans...)
			} else {
				ans = append(ans, a[i])
			}
		} else {
			if i%2 == 0 {
				ans = append([]int{a[i]}, ans...)
			} else {
				ans = append(ans, a[i])
			}

		}
	}
	for i := 0; i < len(ans); i++ {
		fmt.Print(ans[i], " ")
	}
	fmt.Println()
}
