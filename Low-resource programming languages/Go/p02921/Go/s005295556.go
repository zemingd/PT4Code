package main

import (
	"bufio"
	"fmt"
	"os"
)

var sc = bufio.NewScanner(os.Stdin)

func nextString() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	sc.Split(bufio.ScanWords)
	s := nextString()
	t := nextString()

	count := 0
	if s[0] == t[0] {
		count++
	}
	if s[1] == t[1] {
		count++
	}
	if s[2] == t[2] {
		count++
	}
	fmt.Println(count)
}
