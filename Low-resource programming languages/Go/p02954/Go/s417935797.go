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

	s := getNextString(scanner)
	n := len(s)

	ans := make([]int, n)

	l := 0
	r := 0
	for i := 0; i < n; i++ {
		if s[i] == 'R' {
			r++
			continue
		}
		ans[i] += r >> 1
		ans[i-1] += r - (r >> 1)
		r = 0
	}
	for i := n - 1; i >= 0; i-- {
		if s[i] == 'L' {
			l++
			continue
		}
		ans[i] += l >> 1
		ans[i+1] += l - (l >> 1)
		l = 0
	}

	for i := 0; i < n; i++ {
		fmt.Fprint(writer, ans[i])
		if i < n-1 {
			fmt.Fprint(writer, " ")
			continue
		}
		fmt.Fprintln(writer, "")
	}

	writer.Flush()
}
