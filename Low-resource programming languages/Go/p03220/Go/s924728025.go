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
	t := getNextInt(scanner)
	a := float32(getNextInt(scanner))

	min := float32(1 << 30)
	ans := 0
	for i := 0; i < n; i++ {
		h := getNextInt(scanner)
		diff := a - avg(t, h)
		if diff < 0 {
			diff = -diff
		}
		if min > diff {
			min = diff
			ans = i
		}

	}

	fmt.Fprintln(writer, ans+1)
	writer.Flush()
}

func avg(t, h int) float32 {
	return float32(t) - 0.006*float32(h)
}
