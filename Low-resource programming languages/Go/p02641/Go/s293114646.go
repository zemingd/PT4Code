package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	scanner := bufio.NewScanner(os.Stdin)
	var x, n, ans int
	scanner.Scan()
	fmt.Sscan(scanner.Text(), &x, &n)

	p := make([]int, n)
	a := make([]bool, 102) // 0 ~ 101
	for i := range p {
		fmt.Scan(&p[i])
		a[p[i]] = true
	}
	fmt.Fprintln(os.Stderr, a)
	for i := 0; i < 101; i++ {
		if x-i >= 0 && !a[x-i] {
			ans = x - i
			break
		} else if x+i < 103 && !a[x+i] {
			ans = x + i
			break
		}
	}
	fmt.Println(ans)
}
