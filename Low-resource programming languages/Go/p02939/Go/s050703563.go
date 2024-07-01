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

	n := len(s)
	dp := make([][2]int, n+1)
	dp[1][0] = 1
	dp[2][1] = 1
	for i := 1; i < n; i++ {
		for j := 0; j < 2; j++ {
			for k := 0; k < 2; k++ {
				if i+1 > n {
					continue
				}
				if i-j-(k+1) < 0 {
					continue
				}
				if s[i-j:i+1] == s[i-j-(k+1):i-j] {
					continue
				}
				if dp[i+1][j] < dp[i-j][k]+1 {
					dp[i+1][j] = dp[i-j][k] + 1
				}
			}
		}
	}
	ans := 0
	for i := 0; i < 2; i++ {
		if ans < dp[n][i] {
			ans = dp[n][i]
		}
	}

	fmt.Fprintln(writer, ans)
	writer.Flush()
}
