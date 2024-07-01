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

	x := getNextInt(scanner)

	min := 1 << 30

	for i := x; i > 99; i /= 10 {
		abs := absint(i%1000 - 753)
		if abs < min {
			min = abs
		}
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
