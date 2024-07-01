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
	wfp := os.Stdout

	if len(os.Args) > 1 {
		fp, _ = os.Open(os.Args[1])
		if len(os.Args) > 2 {
			wfp, _ = os.Create(os.Args[2])
		}
	}

	scanner := getScanner(fp)
	writer := bufio.NewWriter(wfp)

	n := getNextInt(scanner)
	dd := make([]int, n)

	for i := 0; i < n; i++ {
		dd[i] = getNextInt(scanner)
	}

	ans := 0

	for i := 0; i < n-1; i++ {
		for j := i + 1; j < n; j++ {
			ans += dd[i] * dd[j]
		}
	}
	fmt.Fprintln(writer, ans)

	writer.Flush()
}
