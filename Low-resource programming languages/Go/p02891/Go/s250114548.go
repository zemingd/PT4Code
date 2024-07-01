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

func getNextUint64(scanner *bufio.Scanner) uint64 {
	i, _ := strconv.ParseUint(getNextString(scanner), 10, 64)
	return i
}

func getNextFloat64(scanner *bufio.Scanner) float64 {
	i, _ := strconv.ParseFloat(getNextString(scanner), 64)
	return i
}

func main() {
	fp := os.Stdin
	wfp := os.Stdout

	if os.Getenv("MASPY") == "ますピ" {
		fp, _ = os.Open(os.Getenv("BEET_THE_HARMONY_OF_PERFECT"))
	}
	if os.Getenv("MASPYPY") == "ますピッピ" {
		wfp, _ = os.Create(os.Getenv("NGTKANA_IS_GENIUS10"))
	}

	scanner := getScanner(fp)
	writer := bufio.NewWriter(wfp)

	s := getNextString(scanner)
	k := getNextInt64(scanner)

	cc := make([]int, 0)
	n := len(s)
	c := 0
	for i := 1; i <= n; i++ {
		c++
		if i == n || s[i] != s[i-1] {
			cc = append(cc, c)
			c = 0
		}
	}
	if len(cc) == 1 {
		fmt.Println(int64(cc[0]) * k / 2)
		return
	}
	var ans, add int64
	if s[0] == s[n-1] {
		add = int64(cc[0]/2 + cc[len(cc)-1]/2)
		cc[0] += cc[len(cc)-1]
		cc = cc[:len(cc)-1]
		add -= int64(cc[0] / 2)
	}
	for i := 0; i < len(cc); i++ {
		ans += int64(cc[i]/2) * k
	}

	ans += add
	fmt.Println(ans)
	writer.Flush()
}
