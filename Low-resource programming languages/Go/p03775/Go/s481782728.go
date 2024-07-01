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
	fmt.Fprintln(writer, f(n))

	writer.Flush()
}

func f(n int) int {
	ans := len(fmt.Sprintf("%d", n))
	for i := 1; i*i <= n; i++ {
		if n%i != 0 {
			continue
		}
		li := len(fmt.Sprintf("%d", i))
		ld := len(fmt.Sprintf("%d", n/i))
		if li < ld {
			li = ld
		}
		if ans > li {
			ans = li
		}

	}
	return ans
}
