package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
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

	ba := make(BigArrays, n)
	for i := 0; i < n; i++ {
		ba[i].a = getNextInt(scanner)
		ba[i].b = getNextInt(scanner)
	}
	sort.Sort(ba)
	ans := 0

	for i := 0; i < n && k > 0; i++ {
		k -= ba[i].b
		ans = ba[i].a
	}

	fmt.Fprintln(writer, ans)

	writer.Flush()
}

type BigArray struct {
	a, b int
}

type BigArrays []BigArray

func (a BigArrays) Len() int           { return len(a) }
func (a BigArrays) Swap(i, j int)      { a[i], a[j] = a[j], a[i] }
func (a BigArrays) Less(i, j int) bool { return a[i].a < a[j].a }
