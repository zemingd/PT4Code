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

func getNextUint64(scanner *bufio.Scanner) uint64 {
	i, _ := strconv.ParseUint(getNextString(scanner), 10, 64)
	return i
}

func getNextFloat64(scanner *bufio.Scanner) float64 {
	i, _ := strconv.ParseFloat(getNextString(scanner), 64)
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
	bb := make([]int, n)
	cc := make([]int, n-1)
	for i := 0; i < n; i++ {
		aa[i] = getNextInt(scanner) - 1
	}
	for i := 0; i < n; i++ {
		bb[i] = getNextInt(scanner)
	}
	for i := 0; i < n-1; i++ {
		cc[i] = getNextInt(scanner)
	}

	var ans int
	for i := 0; i < n; i++ {
		ans += bb[i]
		if i == 0 {
			continue
		}
		if aa[i-1]+1 == aa[i] {
			ans += cc[aa[i-1]]
		}
	}
	fmt.Fprintln(writer, ans)
	writer.Flush()
}
