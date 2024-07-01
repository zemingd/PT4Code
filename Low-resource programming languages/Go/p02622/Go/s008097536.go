package main

import (
	"bufio"
	"fmt"
	"os"
)

var sc = bufio.NewScanner(os.Stdin)

func init() {
	sc.Split(bufio.ScanWords)
}

func input() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	s := input()
	t := input()

	count := 0
	if s == t {
		fmt.Println(count)
		return
	}

	for i := 0; i < len(s); i++ {
		if s[i] != t[i] {
			count++
		}
	}

	fmt.Println(count)
}
