package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	r := bufio.NewReader(os.Stdin)
	var n int
	fmt.Fscan(r, &n)

	if n%2 != 0 {
		fmt.Println(0)
		return
	}

	ans := 0
	divisor := 5
	for divisor <= n/2 {
		ans += n / 2 / divisor
		divisor *= 5
	}
	fmt.Println(ans)
}
