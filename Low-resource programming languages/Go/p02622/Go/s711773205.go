package main

import (
	"bufio"
	"fmt"
	"os"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
	sc.Scan()
	s := sc.Text()
	sc.Scan()
	t := sc.Text()
	cnt := 0
	length := len(s)
	for i := 0; i < length; i++ {
		if s[i] != t[i] {
			cnt++
		}
	}
	fmt.Print(cnt)
	return
}
