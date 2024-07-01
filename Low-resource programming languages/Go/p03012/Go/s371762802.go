package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func getNextWord(scanner *bufio.Scanner) string {
	scanner.Scan()
	return scanner.Text()
}

func getNextInt(scanner *bufio.Scanner) int {
	i, _ := strconv.Atoi(getNextWord(scanner))
	return i
}

func main() {
	fp := os.Stdin
	if len(os.Args) > 1 {
		fp, _ = os.Open(os.Args[1])
	}

	scanner := bufio.NewScanner(fp)
	scanner.Split(bufio.ScanWords)
	writer := bufio.NewWriter(os.Stdout)

	n := getNextInt(scanner)
	ww := make([]int, n+1)
	for i := 1; i <= n; i++ {
		ww[i] = ww[i-1] + getNextInt(scanner)
	}
	min := ww[n]
	for i := 1; i < n; i++ {
		min = minint(absint(ww[n]-ww[i]*2), min)
	}

	fmt.Fprintln(writer, min)

	writer.Flush()
}
func absint(a int) int {
	if a < 0 {
		return -a
	}
	return a
}

func minint(a int, b int) int {
	if a < b {
		return a
	}
	return b
}