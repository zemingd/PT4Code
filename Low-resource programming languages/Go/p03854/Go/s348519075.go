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
	scanner.Buffer(make([]byte, 500001), 500000)
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

func main() {
	fp := os.Stdin
	if len(os.Args) > 1 {
		fp, _ = os.Open(os.Args[1])
	}

	scanner := getScanner(fp)
	writer := bufio.NewWriter(os.Stdout)

	s := getNextString(scanner)
	ans := "NO"
	if able(s) {
		ans = "YES"
	}
	fmt.Fprintln(writer, ans)
	writer.Flush()
}

func able(s string) bool {
	if s == "" {
		return true
	}

	ss := map[string]int{
		"dream":   5,
		"dreamer": 7,
		"erase":   5,
		"eraser":  6,
	}

	for sss, l := range ss {
		if len(s) < l {
			continue
		}
		if s[0:l] == sss {
			if able(s[l:]) {
				return true
			}
		}
	}

	return false
}
