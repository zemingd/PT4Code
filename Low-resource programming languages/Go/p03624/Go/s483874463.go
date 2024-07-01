package main

import (
	"bufio"
	"fmt"
	"os"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
	sc.Scan()
	str := sc.Text()

	var alpha [26]int

	for _, s := range str {
		alpha[s-'a'] = 1
	}

	for _, c := range alpha {
		if c == 0 {
			goto L
		}
	}

	fmt.Println("None")
	return

L:
	for i, c := range alpha {
		if c > 0 {
			fmt.Println(string(i + 97))
			return
		}
	}

}
