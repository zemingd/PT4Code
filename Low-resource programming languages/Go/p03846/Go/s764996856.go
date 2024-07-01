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

	n := getNextInt(scanner)
	cc := make([]int, n)

	for i := 0; i < n; i++ {
		a := getNextInt(scanner)
		cc[a]++
	}
	ans := 1
	for i := 0; i < n; i++ {
		if cc[i] > 2 {
			ans = 0
			break
		}
		if i == 0 && cc[i] >= 2 {
			ans = 0
			break
		}
		if cc[i] > 0 && i%2 == n%2 {
			ans = 0
			break
		}
		if i%2 == n%2 {
			continue
		}
		ans *= cc[i]
		ans %= int(1e9 + 7)
	}
	fmt.Fprintln(writer, ans)
	writer.Flush()
}
