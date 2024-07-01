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
	y := getNextInt(scanner)

	fmt.Fprintln(writer, solve(n, y))
	writer.Flush()
}

func solve(n, y int) string {
	a := 0
	for i := 10000*n - y; i >= 0; i -= 5000 {
		if (i-y)%9000 == 0 {
			return fmt.Sprintf("%d %d %d", n-a-(i-y)/9000, a, (i-y)/9000)
		}
		a++
	}
	return "-1 -1 -1"
}
