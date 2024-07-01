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
	input := scanString()
	if input[2] == input[3] && input[4] == input[5] {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
