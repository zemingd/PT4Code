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
	pp := make([]int, n)

	for i := 0; i < n; i++ {
		pp[i] = getNextInt(scanner)
	}

	ans := 0
	for i := 1; i < n-1; i++ {
		if pp[i-1] < pp[i] && pp[i] > pp[i+1] {
			continue
		}
		if pp[i-1] > pp[i] && pp[i] < pp[i+1] {
			continue
		}
		ans++
	}
	fmt.Fprintln(writer, ans)
	writer.Flush()
}
