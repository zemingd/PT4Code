package main

import (
	"bufio"
	"fmt"
	"os"
)

var sc = bufio.NewScanner(os.Stdin)

func rb() []byte {
	sc.Scan()
	return sc.Bytes()
}

func smaller(a, b int) int {
	if a < b {
		return a
	}
	return b
}

func main() {
	s := rb()

	x := 0
	for i, v := range s {
		if i&1 == 0 && v == '0' { // Odd
			x++
		} else if i&1 != 0 && v == '1' {
			x++
		}
	}

	y := 0
	for i, v := range s {
		if i&1 == 0 && v == '1' { // Odd
			y++
		} else if i&1 != 0 && v == '0' {
			y++
		}
	}

	fmt.Println(smaller(x, y))
}
