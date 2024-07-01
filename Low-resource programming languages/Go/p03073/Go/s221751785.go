package main

import (
	"bufio"
	"fmt"
	"os"
)

func readLine(sc *bufio.Scanner) string {
	sc.Scan()
	return sc.Text()
}

func min(a, b int) int {
	if a <= b {
		return a
	}
	return b
}

func count(str string, a, b rune) int {
	cnt := 0
	runes := []rune{a, b}
	index := 0
	for _, s := range str {
		if s != runes[index] {
			cnt++
		}
		index++
		index %= 2
	}
	return cnt
}

func main() {
	sc := bufio.NewScanner(os.Stdin)

	line := readLine(sc)

	fmt.Println(min(count(line, '0', '1'), count(line, '1', '0')))
}
