package main

import (
	"bufio"
	"fmt"
	"os"
)

var sc = bufio.NewScanner(os.Stdin)

func scanString() (s string) {
	sc.Scan()
	return sc.Text()
}

func main() {
	inputs := scanString()
	if inputs[0] == inputs[1] && inputs[1] == inputs[2] {
		fmt.Println("No")
	} else {
		fmt.Println("Yes")
	}
}
