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

func readChar(sc *bufio.Scanner) rune {
	return []rune(readLine(sc))[0]
}

func main() {
	dict := map[rune]rune {
		'A': 'T',
		'C': 'G',
		'T': 'A',
		'G': 'C',
	}

	sc := bufio.NewScanner(os.Stdin)
	c := readChar(sc)
	fmt.Println(string(dict[c]))
}
