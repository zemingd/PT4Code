package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	r := bufio.NewReader(os.Stdin)
	var d, n int
	fmt.Fscan(r, &d)
	fmt.Fscan(r, &n)

	ans := 1
	for i := 1; i <= d; i++ {
		ans *= 100
	}
	if n == 100 {
		ans *= 101
	} else {
		ans *= n
	}

	fmt.Println(ans)
}
