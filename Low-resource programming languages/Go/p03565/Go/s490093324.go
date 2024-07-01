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
	s := getNextString(scanner)
	t := getNextString(scanner)
	n := len(s)
	m := len(t)
	for i := 0; i < n-m+1; i++ {
		if ok(s[i:], t) {
			for j := 0; j < i; j++ {
				if s[j] == '?' {
					fmt.Fprint(writer, "a")
					continue
				}
				fmt.Fprintf(writer, "%c", s[j])
			}
			fmt.Fprint(writer, t)
			for j := i + m; j < n; j++ {
				if s[j] == '?' {
					fmt.Fprint(writer, "a")
					continue
				}
				fmt.Fprintf(writer, "%c", s[j])
			}
			fmt.Fprintln(writer, "")
			return
		}
	}
	fmt.Fprintln(writer, "UNRESTORABLE")
}
func ok(s, t string) bool {
	n := len(t)
	for i := 0; i < n; i++ {
		if s[i] == '?' {
			continue
		}
		if s[i] != t[i] {
			return false
		}
	}
	return true
}
