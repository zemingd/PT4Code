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
	im := IntMap{}

	for i := 0; i < n; i++ {
		a := getNextInt(scanner)
		im.increment(a / 400)
	}

	ans := 0
	master := 0
	for k, v := range im {
		if k >= 7 {
			master += v
			continue
		}
		ans++
	}
	if ans == 0 && master > 0 {
		ans = 1
		master--
	}

	fmt.Fprintf(writer, "%d %d\n", ans, ans+master)

	writer.Flush()
}

// IntMap ...
type IntMap map[int]int

func (m IntMap) get(key int) int {
	if _, ok := m[key]; ok {
		return m[key]
	}
	return 0
}
func (m IntMap) increment(key int) {
	if _, ok := m[key]; ok == false {
		m[key] = 0
	}
	m[key]++
}
