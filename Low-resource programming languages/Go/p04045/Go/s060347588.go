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
	k := getNextInt(scanner)
	if k == 10 {
		fmt.Fprintln(writer, 0)

		writer.Flush()
		return
	}
	var disable [10]int
	dd := make([]int, k)

	for i := 0; i < k; i++ {
		dd[i] = getNextInt(scanner)
		disable[dd[i]] = 1
	}

	valid := false
	for ; valid == false; n++ {
		l := 0
		valid = true
		for i := 10000; i > 0; i /= 10 {
			if n/i > 0 {
				l = i
				break
			}
		}
		for i := l; i > 0; i /= 10 {
			if disable[(n%(i*10))/i] == 1 {
				valid = false
				break
			}
		}
	}
	fmt.Fprintln(writer, n-1)

	writer.Flush()
}
