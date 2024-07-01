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

func getNextFloat64(scanner *bufio.Scanner) float64 {
	i, _ := strconv.ParseFloat(getNextString(scanner), 64)
	return i
}

func main() {
	fp := os.Stdin
	if len(os.Args) > 1 {
		fp, _ = os.Open(os.Args[1])
	}

	scanner := getScanner(fp)
	writer := bufio.NewWriter(os.Stdout)

	n := getNextInt(scanner)
	m := map[string]int64{}

	ss := make([]string, n)

	for i := 0; i < n; i++ {
		ss[i] = getNextString(scanner)
		k := key(ss[i])
		if _, ok := m[k]; ok == false {
			m[k] = 0
		}
		m[k]++
	}

	var ans int64

	for _, v := range m {
		ans += v * (v - 1) / 2
	}

	fmt.Fprintln(writer, ans)
	writer.Flush()
}

func key(s string) string {
	var cc [26]int
	var ans [26]string

	n := len(s)
	for i := 0; i < n; i++ {
		cc[s[i]-'a']++
	}
	for i := 0; i < 26; i++ {
		ans[i] = fmt.Sprintf("%02d", cc[i])
	}

	return strings.Join(ans[0:], "")
}
