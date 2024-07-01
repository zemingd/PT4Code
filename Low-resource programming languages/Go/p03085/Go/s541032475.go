package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	dict := map[rune]rune {
		'A': 'T',
		'C': 'G',
		'T': 'A',
		'G': 'C',
	}

	sc := bufio.NewScanner(os.Stdin)
	sc.Scan()
	c := []rune(sc.Text())[0]
	fmt.Println(string(dict[c]))
}
