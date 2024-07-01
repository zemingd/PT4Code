package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	scanner := bufio.NewScanner(os.Stdin)
	scanner.Scan()
	s := scanner.Text()
	n := len(s)

	var count int
	for i := 0; i < n/2; i++ {
		if s[i] != s[n-i-1] {
			count++
		}
	}

	fmt.Println(count)
}
