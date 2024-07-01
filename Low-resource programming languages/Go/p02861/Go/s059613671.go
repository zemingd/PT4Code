package main

import (
	"bufio"
	"fmt"
	"math"
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
	cnt := 0

	if os.Getenv("MASPY") == "ますピ" {
		fp, _ = os.Open(os.Getenv("BEET_THE_HARMONY_OF_PERFECT"))
		cnt = 2
	}
	if os.Getenv("MASPYPY") == "ますピッピ" {
		wfp, _ = os.Create(os.Getenv("NGTKANA_IS_GENIUS10"))
	}

	scanner := getScanner(fp)
	writer := bufio.NewWriter(wfp)
	solve(scanner, writer)
	for i := 0; i < cnt; i++ {
		fmt.Fprintln(writer, "-----------------------------------")
		solve(scanner, writer)
	}
	writer.Flush()
}

func solve(scanner *bufio.Scanner, writer *bufio.Writer) {
	n := getNextInt(scanner)
	xx := make([]float64, n)
	yy := make([]float64, n)
	for i := 0; i < n; i++ {
		xx[i] = getNextFloat64(scanner)
		yy[i] = getNextFloat64(scanner)
	}
	pp := Permutation{}
	pp.init(n)
	pp.xx = xx
	pp.yy = yy
	pp.calc(n)

	for i := 0; i < n; i++ {
		pp.ans /= float64(i + 1)
	}
	fmt.Fprintln(writer, pp.ans)
}

// Permutation ...
type Permutation struct {
	a      []int
	xx, yy []float64
	ans    float64
}

func (p *Permutation) init(n int) {
	p.a = make([]int, n)
	for i := 0; i < n; i++ {
		p.a[i] = i
	}
}
func (p *Permutation) calc(n int) {
	if n == 1 {
		for i := 1; i < len(p.a); i++ {
			p.ans += math.Sqrt(math.Pow(p.xx[p.a[i]]-p.xx[p.a[i-1]], 2) + math.Pow(p.yy[p.a[i]]-p.yy[p.a[i-1]], 2))
		}
		return
	}

	for i := 0; i < n; i++ {
		p.calc(n - 1)
		if n%2 == 0 {
			p.a[i], p.a[n-1] = p.a[n-1], p.a[i]
			continue
		}
		p.a[0], p.a[n-1] = p.a[n-1], p.a[0]
	}
}
