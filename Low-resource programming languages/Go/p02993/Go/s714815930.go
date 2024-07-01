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
	if s[0] == s[1] || s[1] == s[2] || s[2] == s[3] {
		fmt.Println("Bad")
	} else {
		fmt.Println("Good")
	}
}
