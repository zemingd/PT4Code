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
	ll := make([]int, n)
	rr := make([]int, n)

	for i := 0; i < n; i++ {
		aa[i] = getNextInt(scanner)
	}

	for i := 0; i < n; i++ {
		ll[i] = aa[i]
		rr[n-1-i] = aa[n-1-i]
		if i == 0 {
			continue
		}
		if ll[i] < ll[i-1] {
			ll[i] = ll[i-1]
		}
		if rr[n-1-i] < rr[n-i] {
			rr[n-1-i] = rr[n-i]
		}
	}

	for i := 0; i < n; i++ {
		if i == 0 {
			fmt.Fprintln(writer, rr[1])
			continue
		}
		if i == n-1 {
			fmt.Fprintln(writer, ll[n-2])
			continue
		}
		ans := ll[i-1]
		if ll[i-1] < rr[n-i] {
			ans = rr[n-i]
		}
		fmt.Fprintln(writer, ans)
	}

	writer.Flush()
}
