// Try AtCoder
// author: Leonardone @ NEETSDKASU
package main

import (
	"bufio"
	"fmt"
	"os"
	"strings"
)

var scn = bufio.NewScanner(os.Stdin)

func readln() string {
	scn.Scan()
	return scn.Text()
}

func main() {
	var n int
	fmt.Sscan(readln(), &n)
	a := make([]int, n)
	s := strings.Split(readln(), " ")
	for i := range a {
		fmt.Sscan(s[i], &a[i])
	}
	ans := make([]int, 0, n)
	if n%2 == 0 {
		for i := n - 1; i >= 0; i-- {
			if i%2 != 0 {
				ans = append(ans, a[i])
			}
		}
		for i := 0; i < n; i++ {
			if i%2 == 0 {
				ans = append(ans, a[i])
			}
		}
	} else {
		for i := n - 1; i >= 0; i-- {
			if i%2 == 0 {
				ans = append(ans, a[i])
			}
		}
		for i := 0; i < n; i++ {
			if i%2 != 0 {
				ans = append(ans, a[i])
			}
		}
	}
	for i, v := range ans {
		if i > 0 {
			fmt.Print(" ")
		}
		fmt.Print(v)
	}
	fmt.Println()
}
