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
	var ans int64
	aa := make([]int64, n)
	for i := 0; i < n; i++ {
		aa[i] = getNextInt64(scanner)
		if i == 0 {
			continue
		}
		ans += max(aa[i-1]-aa[i], 0)
		aa[i] = max(aa[i], aa[i-1])
	}
	fmt.Fprintln(writer, ans)
}
func max(a, b int64) int64 {
	if a < b {
		return b
	}
	return a
}
