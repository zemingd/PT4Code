package main

import (
	"bufio"
	"fmt"
	"os"
)

var sc = bufio.NewScanner(os.Stdin)

func read() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	sc.Split(bufio.ScanWords)
	s := read()
	if s[3] == s[2] && s[5] == s[4] {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
