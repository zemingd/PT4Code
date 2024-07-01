package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
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
	cs := make([]int, 26)
	ct := make([]int, 26)
	n := len(s)
	m := len(t)
	for i := 0; i < n; i++ {
		cs[s[i]-'a']++
	}
	for i := 0; i < m; i++ {
		ct[t[i]-'a']++
	}
	ss := make([]string, 0)
	for i := 0; i < 26; i++ {
		for j := 0; j < cs[i]; j++ {
			ss = append(ss, fmt.Sprintf("%c", 'a'+i))
		}
	}
	tt := make([]string, 0)
	for i := 26 - 1; i >= 0; i-- {
		for j := 0; j < ct[i]; j++ {
			tt = append(tt, fmt.Sprintf("%c", 'a'+i))
		}
	}
	if strings.Compare(strings.Join(ss, ""), strings.Join(tt, "")) == -1 {
		fmt.Fprintln(writer, "Yes")
		return
	}
	fmt.Fprintln(writer, "No")
}
