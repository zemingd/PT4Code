package main

import (
	"bufio"
	"fmt"
	"os"
)

var (
	scanner = bufio.NewScanner(os.Stdin)
	w       = bufio.NewWriter(os.Stdout)
)

func readRunes() (read []rune) {
	scanner.Scan()
	for _, v := range scanner.Text() {
		read = append(read, v)
	}
	return
}

func main() {
	scanner.Split(bufio.ScanWords)
	defer w.Flush()

	s := readRunes()
	t := readRunes()

	cnt := 0
	for i := 0; i < len(s); i++ {
		if s[i] != t[i] {
			cnt++
		}
	}

	fmt.Println(cnt)
}
