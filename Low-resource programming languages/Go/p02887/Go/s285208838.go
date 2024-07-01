package main

import (
	"bufio"
	"fmt"
	"os"
	"strings"
)

func main() {
	s := bufio.NewScanner(os.Stdin)
	s.Scan()
	s.Scan()
	ss := s.Text()

	n := 0

	for len(ss) > 0 {
		ss = strings.TrimLeft(ss, string([]byte{ss[0]}))
		n++
	}

	fmt.Println(n)
}
