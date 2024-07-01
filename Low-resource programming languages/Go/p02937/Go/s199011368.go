package main

import (
	"bufio"
	"fmt"
	"os"
)

var sc = bufio.NewScanner(os.Stdin)

func nextStr() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	var s, t string

	s = nextStr()
	t = nextStr()

	fmt.Println(s, t)
}
