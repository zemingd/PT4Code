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

	aa := make([]int, n+2)
	sum := 0
	for i := 0; i < n; i++ {
		aa[i+1] = getNextInt(scanner)
		sum += absint(aa[i+1] - aa[i])
	}
	sum += absint(aa[n+1] - aa[n])

	for i := 1; i < n+1; i++ {
		ans := sum - absint(aa[i+1]-aa[i]) - absint(aa[i]-aa[i-1]) + absint(aa[i+1]-aa[i-1])
		fmt.Fprintln(writer, ans)
	}

	writer.Flush()
}

func absint(a int) int {
	if a < 0 {
		return -a
	}
	return a
}
