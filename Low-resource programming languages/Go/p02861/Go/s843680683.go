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

	if len(os.Args) > 1 {
		fp, _ = os.Open(os.Args[1])
		if len(os.Args) > 2 {
			wfp, _ = os.Create(os.Args[2])
		}
	}

	scanner := getScanner(fp)
	writer := bufio.NewWriter(wfp)

	n := getNextInt(scanner)
	p := Permutation{}
	p.init(n)

	pp := make([]Point, n)
	for i := 0; i < n; i++ {
		pp[i].x = getNextFloat64(scanner)
		pp[i].y = getNextFloat64(scanner)
	}

	for i := 0; i < n; i++ {
		for j := 0; j < n; j++ {
			p.xy[i][j] = math.Sqrt(math.Pow(pp[i].x-pp[j].x, 2) + math.Pow(pp[i].y-pp[j].y, 2))
		}
	}

	p.calc(n)

	fmt.Fprintln(writer, p.ans/float64(p.fac))

	writer.Flush()
}

type Point struct {
	x, y float64
}
type Permutation struct {
	a   []int
	xy  [][]float64
	ans float64
	fac int
}

func (p *Permutation) init(n int) {
	p.a = make([]int, n)
	p.xy = make([][]float64, n)
	p.fac = 1
	for i := 0; i < n; i++ {
		p.a[i] = i
		p.xy[i] = make([]float64, n)
		p.fac *= i + 1
	}
}
func (p *Permutation) calc(n int) {
	if n == 1 {
		for i := 1; i < len(p.a); i++ {
			p.ans += p.xy[p.a[i]][p.a[i-1]]
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
