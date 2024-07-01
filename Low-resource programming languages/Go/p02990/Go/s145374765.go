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

func main() {
	fp := os.Stdin
	if len(os.Args) > 1 {
		fp, _ = os.Open(os.Args[1])
	}

	scanner := getScanner(fp)
	writer := bufio.NewWriter(os.Stdout)

	n := getNextInt(scanner)
	k := getNextInt(scanner)

	dp := make([][]int, n+1)
	for i := 0; i < n+1; i++ {
		dp[i] = make([]int, n+1)
		dp[0][i] = 1
	}

	for i := 1; i <= n; i++ {
		for ii := i; ii <= n; ii++ {
			dp[i][ii] = (dp[i-1][ii-1] + dp[i][ii-1]) % 1000000007
		}
	}

	for i := 1; i <= k; i++ {
		if n == k {
			fmt.Fprintln(writer, 1)
		}
		ans := (dp[i-1][k-1]) * ((dp[i-1][n-k-1] + dp[i-1][n-k-1] + dp[i][n-k-1]) % 1000000007)
		if i > 1 {
			ans += dp[i-1][k-1] * dp[i-2][n-k-1]
		}
		ans %= 1000000007
	}

	writer.Flush()
}
