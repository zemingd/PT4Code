package main

import (
	"bufio"
	"fmt"
	"os"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
	s,t := nextLine(), nextLine()
	var cnt int
	for i := 0; i < len(s); i++ {
		if s[i] != t[i] {
			cnt++
		}
	}
	fmt.Println(cnt)
}

func nextLine() string {
	sc.Scan()
	return sc.Text()
}
