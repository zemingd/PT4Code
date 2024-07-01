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

	l := 0
	for i := 1000; i > 0; i /= 10 {
		if n/i > 0 {
			l = i
			break
		}
	}
	up := false
	ans := 0
	for i := l; i > 0; i /= 10 {
		min := n / i
		n -= min * i
		if up {
			min = 0
		}
		correct := min
		for disable[correct] == 1 {
			up = true
			correct = (correct + 1) % 10
		}
		ans += correct * i
		if min > correct {
			ans += correct * i * 9
		}
	}

	fmt.Fprintln(writer, ans)

	writer.Flush()
}
