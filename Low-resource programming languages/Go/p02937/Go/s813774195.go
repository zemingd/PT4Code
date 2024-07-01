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

	s := getNextString(scanner)
	t := getNextString(scanner)

	var indexes [26][]int
	var ll [26]int

	for i := 0; i < 26; i++ {
		indexes[i] = make([]int, 0)
	}

	n := len(s)
	for i := 0; i < n; i++ {
		indexes[s[i]-'a'] = append(indexes[s[i]-'a'], i)
	}
	for i := 0; i < 26; i++ {
		ll[i] = len(indexes[i])
	}

	tn := len(t)
	now := 0
	var ans int64
	for i := 0; i < tn; i++ {
		ch := int(t[i] - 'a')
		l := 0
		r := ll[ch]
		if r == 0 {
			ans = -1
			break
		}
		for l < r {
			m := (l + r) >> 1
			if indexes[ch][m] < now {
				l = m + 1
				continue
			}
			r = m
		}
		if l == ll[ch] {
			ans += int64(n - now)
			now = 0
			i--
			continue
		}
		ans += int64(indexes[ch][l] - now + 1)
		now = indexes[ch][l] + 1
	}

	fmt.Fprintln(writer, ans)

	writer.Flush()
}
