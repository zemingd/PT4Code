package main

import (
	"bufio"
	"fmt"
	"os"
)

var (
	sc = bufio.NewScanner(os.Stdin)
)

func main() {
	s := nextWord()
	count := 0
	for _, c := range s {
		if c == '1' {
			count++
		}
	}
	fmt.Println(count)
}

func nextWord() string {
	sc.Scan()
	return sc.Text()
}
