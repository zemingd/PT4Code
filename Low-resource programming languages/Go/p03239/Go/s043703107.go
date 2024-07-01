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
	time := getNextInt(scanner)

	min := 1 << 30
	ans := "TLE"
	for i := 0; i < n; i++ {
		c := getNextInt(scanner)
		t := getNextInt(scanner)
		if time < t {
			continue
		}
		if min > c {
			min = c
			ans = ""
		}
	}
	if ans == "" {
		ans = fmt.Sprintf("%d", min)
	}
	fmt.Fprintln(writer, ans)
	writer.Flush()
}
