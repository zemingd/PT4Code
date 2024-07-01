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
	scanner.Buffer(make([]byte, 1000005), 1000005)
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
	cnt := 0

	if os.Getenv("MASPY") == "ますピ" {
		fp, _ = os.Open(os.Getenv("BEET_THE_HARMONY_OF_PERFECT"))
		cnt = 3
	}
	if os.Getenv("MASPYPY") == "ますピッピ" {
		wfp, _ = os.Create(os.Getenv("NGTKANA_IS_GENIUS10"))
	}

	scanner := getScanner(fp)
	writer := bufio.NewWriter(wfp)
	solve(scanner, writer)
	for i := 0; i < cnt; i++ {
		fmt.Fprintln(writer, "-----------------------------------")
		solve(scanner, writer)
	}
	writer.Flush()
}

func solve(scanner *bufio.Scanner, writer *bufio.Writer) {
	n := getNextInt(scanner)
	m := getNextInt(scanner)
	ans := make([]int, n)
	for i := 0; i < n; i++ {
		ans[i] = -1
	}
	ss := make([]int, m)
	cc := make([]int, m)
	for i := 0; i < m; i++ {
		ss[i] = getNextInt(scanner) - 1
		cc[i] = getNextInt(scanner)
	}

	for i := 0; i < m; i++ {
		if ans[ss[i]] == -1 {
			ans[ss[i]] = cc[i]
			continue
		}
		if ans[ss[i]] != cc[i] {
			fmt.Fprintln(writer, -1)
			return
		}
		ans[ss[i]] = cc[i]
	}
	for i := 1; i < n; i++ {
		if ans[i] == -1 {
			ans[i] = 0
		}
	}
	if n == 1 {
		if ans[0] == -1 {
			ans[0] = 0
		}
	} else {
		if ans[0] == 0 {
			fmt.Fprintln(writer, -1)
			return
		}
		if ans[0] == -1 {
			ans[0] = 1
		}
	}
	for i := 0; i < n; i++ {
		fmt.Fprint(writer, ans[i])
	}
	fmt.Fprintln(writer, "")
}

func maxint(a, b int) int {
	if a < b {
		return b
	}
	return a
}
