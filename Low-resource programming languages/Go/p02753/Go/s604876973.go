package main

import (
	"bufio"
	"fmt"
	"os"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
	sc.Scan()
	s := sc.Text()

	for i := 1; i < len(s); i++ {
		if s[i-1] != s[i] {
			fmt.Print("Yes")
			return
		}
	}

	fmt.Print("No")
}
