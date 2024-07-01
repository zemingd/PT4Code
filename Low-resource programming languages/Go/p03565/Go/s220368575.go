package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
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
	t := getNextString(scanner)

	fmt.Fprintln(writer, solve(s, t))
	writer.Flush()
}

func solve(s, t string) string {
	sl := len(s)
	tl := len(t)

	for i := 0; i < sl-tl; i++ {
		valid := true
		for ti := 0; ti < tl; ti++ {
			si := sl - tl - i + ti
			if s[si] == '?' {
				continue
			}
			if s[si] != t[ti] {
				valid = false
				break
			}
		}
		if valid {
			ans := make([]string, sl)
			for ii := 0; ii < sl; ii++ {
				if s[ii] == '?' {
					ans[ii] = "a"
					continue
				}
				ans[ii] = fmt.Sprintf("%c", s[ii])
			}
			for ii := 0; ii < tl; ii++ {
				ans[sl-tl-i+ii] = fmt.Sprintf("%c", t[ii])
			}
			return strings.Join(ans, "")
		}
	}

	return "UNRESTORABLE"
}
