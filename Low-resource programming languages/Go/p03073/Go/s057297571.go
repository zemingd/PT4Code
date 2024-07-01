package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	stdin := bufio.NewScanner(os.Stdin)

	/* 1st line */
	stdin.Scan()
	text := stdin.Text()
	n := len(text)
	b := make([]int, n)
	for i := 0; i < n; i++ {
		if text[i] == '1' {
			b[i] = 1
		}
	}

	ret := 0
	for i := 0; i < n-2; i++ {
		if b[i+1] == b[i] {
			ret++
			if b[i+1] == b[i+2] {
				b[i+1] = (b[i+1] + 1) % 2
				i++
			} else {
				b[i] = (b[i] + 1) % 2
			}
		}
	}
	if b[n-1] == b[n-2] {
		ret++
		b[n-1] = (b[n-1] + 1) % 2
	}

	fmt.Println(ret)
}
