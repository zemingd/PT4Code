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

func readString() string {
	scanner.Scan()
	return scanner.Text()
}

func main() {
	scanner.Split(bufio.ScanWords)
	defer w.Flush()

	s := readString()
	t := readString()

	cnt := 0
	for i := 0; i < len(s); i++ {
		if s[i] != t[i] {
			cnt++
		}
	}

	fmt.Println(cnt)
}
