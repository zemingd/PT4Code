package main

import (
	"bufio"
	"fmt"
	"math"
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
	a := getNextInt(scanner)
	b := getNextInt(scanner)
	m := getNextInt(scanner)
	aa := make([]int, a)
	bb := make([]int, b)
	for i := 0; i < a; i++ {
		aa[i] = getNextInt(scanner)
	}

	mb := math.MaxInt32
	for i := 0; i < b; i++ {
		bb[i] = getNextInt(scanner)
		mb = minint(mb, bb[i])
	}
	ans := make([]int, a)
	for i := 0; i < a; i++ {
		ans[i] = aa[i] + mb
	}
	for i := 0; i < m; i++ {
		x := getNextInt(scanner) - 1
		y := getNextInt(scanner) - 1
		c := getNextInt(scanner)
		ans[x] = minint(ans[x], aa[x]+bb[y]-c)
	}
	o := ans[0]
	for i := 0; i < a; i++ {
		o = minint(o, ans[i])
	}
	fmt.Fprintln(writer, o)
}

func minint(a, b int) int {
	if a < b {
		return a
	}
	return b
}
