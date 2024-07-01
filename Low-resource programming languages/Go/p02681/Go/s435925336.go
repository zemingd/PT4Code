package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	lines := getLines(2)
	fmt.Println(checker(lines))
}

func checker(lines []string) string {

	s := lines[0]
	t := lines[1]

	sLen := len(lines[0])

	if s != t[:sLen] {
		return "No"
	}

	return "Yes"
}

func getLines(n int) []string {
	var lines []string
	sc := bufio.NewScanner(os.Stdin)
	for i := 0; i < n; i++ {
		sc.Scan()
		t := sc.Text()
		lines = append(lines, t)
	}
	return lines
}
