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
	sc.Split(bufio.ScanWords)
	S := nextStr()
	W := nextStr()

	if S <= W {
		fmt.Print("unsafe")
	} else {
		fmt.Print("safe")
	}
}
