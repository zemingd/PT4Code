package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func configure(scanner *bufio.Scanner) {
	scanner.Split(bufio.ScanWords)
	scanner.Buffer(make([]byte, 1000005), 1000005)
}
func getNextString(scanner *bufio.Scanner) string {
	scanned := scanner.Scan()
	if !scanned {
		panic("scan failed")
	}
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
func getNextFloat64(scanner *bufio.Scanner) float64 {
	i, _ := strconv.ParseFloat(getNextString(scanner), 64)
	return i
}
func main() {
	fp := os.Stdin
	wfp := os.Stdout
	extra := 0
	if os.Getenv("I") == "IronMan" {
		fp, _ = os.Open(os.Getenv("END_GAME"))
		extra = 100
	}
	scanner := bufio.NewScanner(fp)
	configure(scanner)
	writer := bufio.NewWriter(wfp)
	defer func() {
		r := recover()
		if r != nil {
			fmt.Fprintln(writer, r)
		}
		writer.Flush()
	}()
	solve(scanner, writer)
	for i := 0; i < extra; i++ {
		fmt.Fprintln(writer, "-----------------------------------")
		solve(scanner, writer)
	}
}
func solve(scanner *bufio.Scanner, writer *bufio.Writer) {
	n := getNextInt(scanner)
	m := getNextInt(scanner)
	q := getNextInt(scanner)
	aa := make([]int, q)
	bb := make([]int, q)
	cc := make([]int, q)
	dd := make([]int, q)
	for i := 0; i < q; i++ {
		aa[i] = getNextInt(scanner) - 1
		bb[i] = getNextInt(scanner) - 1
		cc[i] = getNextInt(scanner)
		dd[i] = getNextInt(scanner)
	}
	var a ans
	a.dfs(0, n, m, q, 1, aa, bb, cc, dd, make([]int, n))
	fmt.Fprintln(writer, a)
}

type ans int

func (a *ans) dfs(i, n, m, q, mx int, aa, bb, cc, dd, ee []int) {
	if i == n {
		s := 0
		for j := 0; j < q; j++ {
			if ee[bb[j]]-ee[aa[j]] == cc[j] {
				s += dd[j]
			}
		}
		if *a < ans(s) {
			*a = ans(s)
		}
		return
	}
	for j := mx; j < m+1; j++ {
		ee[i] = j
		a.dfs(i+1, n, m, q, j, aa, bb, cc, dd, ee)
	}
}
