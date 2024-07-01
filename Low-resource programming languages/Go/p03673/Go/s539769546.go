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
	b := make([]int, n)

	for i := 0; i < n; i++ {
		a := getNextInt(scanner)
		if i%2 == 0 {
			b[n/2+i/2] = a
			continue
		}
		b[n/2-((n+1)%2)-(i-1)/2] = a
	}

	for i := 0; i < n; i++ {
		fmt.Fprint(writer, b[i])
		if i == n-1 {
			fmt.Fprintln(writer, "")
			continue
		}
		fmt.Fprint(writer, " ")
	}

	writer.Flush()
}
