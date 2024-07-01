package main

import (
	"bufio"
	"fmt"
	"io"
	"os"
)

func main() {
	solve(os.Stdin, os.Stdout)
}

func solve(r io.Reader, w io.Writer) {
	scanner := initScanner(r)
	s := scanString(scanner)
	rainyDays := 0
	max := 0
	for _, v := range s {
		if v == 'R' {
			rainyDays += 1
		} else {
			max = rainyDays
			rainyDays = 0
		}
	}
	fmt.Fprintln(w, max)
}

// utilityメソッド群

const maxCapacity = 512 * 1024 // デフォルト値は64*1024

func initScanner(r io.Reader) *bufio.Scanner {
	scanner := bufio.NewScanner(r)
	buf := make([]byte, maxCapacity)
	scanner.Buffer(buf, maxCapacity)
	scanner.Split(bufio.ScanWords) // スペースごとに読み込む
	return scanner
}

func scanString(scanner *bufio.Scanner) string {
	scanner.Scan()
	return scanner.Text()
}
