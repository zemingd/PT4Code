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
	s := getNextString(scanner)
	bb := make([]int, n+1)
	ww := make([]int, n+1)
	for i := 0; i < n; i++ {
		if s[i] == '#' {
			bb[i+1]++
		}
		bb[i+1] += bb[i]
	}
	for i := n - 1; i >= 0; i-- {
		if s[i] == '.' {
			ww[i]++
		}
		ww[i] += ww[i+1]
	}
	var ans int
	ans = n
	for i := 0; i < n+1; i++ {
		if ans > ww[i]+bb[i] {
			ans = ww[i] + bb[i]
		}
	}
	fmt.Fprintln(writer, ans)
}
