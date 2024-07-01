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
	S := nextStr()

	if S == "ARC" {
		fmt.Print("ABC")
	} else if S == "ABC" {
		fmt.Print("ARC")
	}
}
