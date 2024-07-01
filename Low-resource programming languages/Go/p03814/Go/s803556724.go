package main

import (
	"bufio"
	"fmt"
	"os"
)

// fmt.Scan is high cost
func main() {
	var sc = bufio.NewScanner(os.Stdin)
	var s string
	sc.Scan()
	s = sc.Text()
	a, z := -1, -1
	for i := 0; i < len(s); i++ {
		if a == -1 && s[i] == 'A' {
			a = i
		}
		if s[i] == 'Z' {
			z = i
		}
	}
	fmt.Println(z - a + 1)
}
