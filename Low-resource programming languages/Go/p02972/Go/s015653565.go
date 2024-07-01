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

	for i := 0; i < n; i++ {
		aa[i] = getNextInt(scanner)
	}

	ans := make([]int, n+1)
	ans[n] = aa[n-1]

	m := 0
	for i := n - 2; i >= 0; i-- {
		x := i + 1
		s := 0
		for ii := 2; ii*x < n+1; ii++ {
			s += ans[ii*x]
		}

		ans[x] = aa[i] ^ (s % 2)
		if ans[x] == 1 {
			m++
		}
	}

	if m == 0 {
		fmt.Fprintln(writer, 0)
	} else {
		fmt.Fprintln(writer, m)
		for i := 1; i < n+1; i++ {
			if ans[i] == 1 {
				fmt.Fprintln(writer, i)
			}
		}
	}

	writer.Flush()
}
