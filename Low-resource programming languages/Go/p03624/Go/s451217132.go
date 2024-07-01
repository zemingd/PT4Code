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

	var alpha [26]bool

	for _, s := range str {
		alpha[s-'a'] = true
	}
	for i, c := range alpha {
		if c == false {
			fmt.Println(string(i + 97))
			return
		}
	}

	fmt.Println("None")
	return
}
