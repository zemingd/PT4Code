package main

import (
	"bufio"
	"fmt"
	"os"
)

var sc = bufio.NewScanner(os.Stdin)

func nextLine() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	cnt := 0
	s := nextLine()
	t := nextLine()

	for i := 0; i < 3; i++ {
		if s[i] == t[i] {
			cnt++
		}
	}
	fmt.Println(cnt)
}
