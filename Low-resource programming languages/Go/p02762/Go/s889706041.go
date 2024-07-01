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
	k := getNextInt(scanner)
	uf := make([]int, n)
	ans := make([]int, n)
	aa := make([]int, m)
	bb := make([]int, m)
	cc := make([]int, k)
	dd := make([]int, k)
	for i := 0; i < n; i++ {
		uf[i] = i
	}
	for i := 0; i < m; i++ {
		aa[i] = getNextInt(scanner) - 1
		bb[i] = getNextInt(scanner) - 1
		ra := root(aa[i], uf)
		rb := root(bb[i], uf)
		if ra == rb {
			continue
		}
		uf[rb] = ra
	}
	for i := 0; i < n; i++ {
		ans[root(i, uf)]++
	}
	for i := 0; i < n; i++ {
		ans[i] = ans[root(i, uf)]
	}
	for i := 0; i < m; i++ {
		if root(aa[i], uf) != root(bb[i], uf) {
			continue
		}
		ans[aa[i]]--
		ans[bb[i]]--
	}
	for i := 0; i < k; i++ {
		cc[i] = getNextInt(scanner) - 1
		dd[i] = getNextInt(scanner) - 1
		if root(cc[i], uf) != root(dd[i], uf) {
			continue
		}
		ans[cc[i]]--
		ans[dd[i]]--
	}
	for i := 0; i < n; i++ {
		fmt.Fprintln(writer, ans[i]-1)
	}
}
func root(i int, uf []int) int {
	if i == uf[i] {
		return i
	}

	uf[i] = root(uf[i], uf)
	return uf[i]
}
