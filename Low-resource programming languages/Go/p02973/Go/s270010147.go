package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func getScanner(fp *os.File) *bufio.Scanner {
	scanner := bufio.NewScanner(fp)
	scanner.Split(bufio.ScanWords)
	scanner.Buffer(make([]byte, 500001), 500000)
	return scanner
}

func getNextString(scanner *bufio.Scanner) string {
	scanner.Scan()
	return scanner.Text()
}

func getNextInt(scanner *bufio.Scanner) int {
	i, _ := strconv.Atoi(getNextString(scanner))
	return i
}

func getNextInt64(scanner *bufio.Scanner) int64 {
	i, _ := strconv.ParseInt(getNextString(scanner), 10, 64)
	return i
}

func main() {
	fp := os.Stdin
	if len(os.Args) > 1 {
		fp, _ = os.Open(os.Args[1])
	}

	scanner := getScanner(fp)
	writer := bufio.NewWriter(os.Stdout)

	n := getNextInt(scanner)
	aa := make([]int, n)
	mm := make([]int, n+1)
	j := 0

	for i := 0; i < n; i++ {
		aa[i] = getNextInt(scanner)
		l := 0
		r := j
		for l < r {
			m := (l + r) >> 1
			if mm[m] < aa[i] {
				r = m
				continue
			}
			l = m + 1
		}
		mm[l] = aa[i]
		if l == j {
			j++
		}
	}

	fmt.Fprintln(writer, j)

	writer.Flush()
}
