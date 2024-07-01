// https://atcoder.jp/contests/abc136/tasks/abc136_c

package main

import "fmt"

func main() {
	var N int
	fmt.Scanf("%d", &N)
	h := make([]int, N)
	for i := range h {
		fmt.Scanf("%d", &h[i])
	}

	curr := 10000000000
	for i := len(h) - 1; i >= 0; i-- {
		if h[i] > curr+1 {
			fmt.Println("No")
			return
		} else if h[i] == curr+1 {
		} else {
			curr = h[i]
		}
	}
	fmt.Println("Yes")
}
