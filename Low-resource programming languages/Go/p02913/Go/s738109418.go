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

	n := getNextInt(scanner)
	s := getNextString(scanner)

	mp := MP{}
	ans := 0
	for i := 0; i < n; i++ {
		mp.init(s[i:n])
		for j := 0; j < n-i; j++ {
			if mp.table[j+1]*2 <= j+1 {
				if ans < mp.table[j+1] {
					ans = mp.table[j+1]
				}
			}
		}
	}
	fmt.Println(ans)

	writer.Flush()
}

// MP ...
type MP struct {
	s     string
	table []int
}

func (mp *MP) init(s string) {
	mp.s = s
	n := len(s)
	table := make([]int, n+1)
	table[0] = -1
	j := -1
	for i := 0; i < n; i++ {
		for j >= 0 && s[i] != s[j] {
			j = table[j]
		}
		j++
		table[i+1] = j
	}
	mp.table = table
}
