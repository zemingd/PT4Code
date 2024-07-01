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
	aa := make([]int64, n+1)
	bb := make([]int64, n)
	var ans int64
	for i := 0; i < n+1; i++ {
		aa[i] = getNextInt64(scanner)
	}
	for i := 0; i < n; i++ {
		bb[i] = getNextInt64(scanner)
	}

	for i := 0; i < n; i++ {
		if aa[i] < bb[i] {
			ans += aa[i]
			if i < n-1 {
				bb[i+1] += bb[i] - aa[i]
			}
			bb[i] -= aa[i]
			continue
		}
		ans += bb[i]
		bb[i] = 0
	}
	if aa[n] < bb[n-1] {
		ans += aa[n]
	} else {
		ans += bb[n-1]
	}
	fmt.Fprintln(writer, ans)
	writer.Flush()
}
