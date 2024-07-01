// Try AtCoder
// author: Leonardone @ NEETSDKASU
package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

var scn = bufio.NewScanner(os.Stdin)

func readln() string {
	scn.Scan()
	return scn.Text()
}

func atoi(s string) int {
	v, _ := strconv.Atoi(s)
	return v
}

func main() {
	n := atoi(readln())
	a := make([]int, n+10)
	s := strings.Split(readln(), " ")
	for i := range s {
		a[i] = atoi(s[i])
	}
	ans := make([]int, 0, n+10)
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
	for i, v := range ans[:n] {
		if i > 0 {
			fmt.Print(" ")
		}
		fmt.Print(v)
	}
	fmt.Println()
}
