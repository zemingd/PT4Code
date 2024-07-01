package main

import (
	"bufio"
	"fmt"
	"os"
)

func solution(a, b, c, d int) int {
	out := -1 << 31
	max := func(x, y int) int {
		if x > y {
			return x
		}
		return y
	}
	out = max(out, a*c)
	out = max(out, b*d)
	out = max(out, b*c)
	out = max(out, a*d)
	return out
}

func main() {
	r := bufio.NewReader(os.Stdin)
	var a, b, c, d int
	fmt.Fscan(r, &a, &b, &c, &d)
	fmt.Println(solution(a, b, c, d))
}
