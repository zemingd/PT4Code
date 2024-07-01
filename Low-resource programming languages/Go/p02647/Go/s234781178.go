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
	k := getNextInt(scanner)
	aa := make([]int, n)
	for i := 0; i < n; i++ {
		aa[i] = getNextInt(scanner)
	}
	var sum int64
	for i := 0; i < k; i++ {
		aa, sum = update(n, aa)
		if sum == int64(n)*int64(n) {
			break
		}
	}
	for i := 0; i < n; i++ {
		fmt.Fprintln(writer, aa[i])
	}
}

func update(n int, aa []int) ([]int, int64) {
	bb := make([]int, n+1)
	for i := 0; i < n; i++ {
		l := i - aa[i]
		if l < 0 {
			l = 0
		}
		r := i + aa[i] + 1
		if r >= n {
			r = n
		}
		bb[l]++
		bb[r]--
	}
	sum := int64(bb[0])
	for i := 1; i < n; i++ {
		bb[i] += bb[i-1]
		sum += int64(bb[i])
	}
	return bb, sum
}
