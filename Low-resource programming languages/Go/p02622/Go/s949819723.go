package main

import (
	"bufio"
	"fmt"
	"os"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
	s,t := nextLine(), nextLine()
	cnt := 0
	length := len(s)
	for i := 0; i < length; i++ {
		if s[i] != t[i] {
			cnt++
		}
	}
	fmt.Print(cnt)
}

func nextLine() string {
	sc.Scan()
	return sc.Text()
}
