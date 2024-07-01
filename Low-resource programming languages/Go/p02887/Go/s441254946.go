package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	r := bufio.NewReader(os.Stdin)
	var n int
	var s string
	fmt.Fscan(r, &n, &s)
	ans := 1
	for i := 1; i < n; i++ {
		if s[i] != s[i-1] {
			ans++
		}
	}
	fmt.Println(ans)
}
