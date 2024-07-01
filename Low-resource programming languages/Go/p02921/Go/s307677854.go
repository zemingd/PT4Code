package main

import (
	"bufio"
	"fmt"
	"os"
	"strings"
)

var scanner = bufio.NewScanner(os.Stdin)

func scanLine() []string {
	var s []string
	scanner.Scan()
	for _, v := range strings.Split(scanner.Text(), "") {
		s = append(s, v)
	}
	return s
}

func main() {
	s := scanLine()
	t := scanLine()

	result := 0
	for i, v := range s {
		if v == t[i] {
			result++
		}
	}
	fmt.Println(result)
}
