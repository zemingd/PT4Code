package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
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
		cnt = 2
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
	aa := make([]int, n)
	bb := make([]int, n)
	cc := make([]int, n)
	for i := 0; i < n; i++ {
		aa[i] = getNextInt(scanner)
	}
	for i := 0; i < n; i++ {
		bb[i] = getNextInt(scanner)
	}
	for i := 0; i < n; i++ {
		cc[i] = getNextInt(scanner)
	}

	sort.Ints(aa)
	sort.Ints(cc)
	var ans int64
	for i := 0; i < n; i++ {
		l := -1
		r := n
		for l+1 < r {
			m := (l + r) >> 1
			if aa[m] < bb[i] {
				l = m
				continue
			}
			r = m
		}
		a := r
		l = -1
		r = n
		for l+1 < r {
			m := (l + r) >> 1
			if cc[m] > bb[i] {
				r = m
				continue
			}
			l = m
		}
		c := n - r
		sonomasaka := int64(a) * int64(c)
		ans += sonomasaka
	}
	fmt.Fprintln(writer, ans)
}
