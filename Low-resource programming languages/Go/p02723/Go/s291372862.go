package main

import (
	"bufio"
	"fmt"
	"os"
)

var sc = bufio.NewScanner(os.Stdin)

func Scanner() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	buf := make([]byte, 0)
	sc.Buffer(buf, 1000000007)
	sc.Split(bufio.ScanWords)
	s := Scanner()
	if s[2] == s[3] && s[4] == s[5] {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
