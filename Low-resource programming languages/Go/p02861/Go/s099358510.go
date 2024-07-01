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
	path := make([]Path, n)

	for i := 0; i < n; i++ {
		path[i].x = getNextFloat64(scanner)
		path[i].y = getNextFloat64(scanner)
	}

	p := permutation(n)
	ans := 0.0
	for _, v := range p {
		for i := 1; i < n; i++ {
			ans += math.Sqrt(math.Pow(path[v[i]-1].x-path[v[i-1]-1].x, 2) + math.Pow(path[v[i]-1].y-path[v[i-1]-1].y, 2))
		}
	}

	fmt.Fprintln(writer, ans/float64(len(p)))
	writer.Flush()
}

type Path struct {
	x, y float64
}

func permutation(n int) [][]int {
	if n == 1 {
		return [][]int{
			[]int{
				1,
			},
		}
	}

	p := permutation(n - 1)
	l := len(p)
	for i := 0; i < l; i++ {
		ll := len(p[i])
		for ii := 0; ii <= ll; ii++ {
			ap := make([]int, ll+1)
			for iii := 0; iii < ii; iii++ {
				ap[iii] = p[i][iii]
			}
			ap[ii] = n
			for iii := ii + 1; iii <= ll; iii++ {
				ap[iii] = p[i][iii-1]
			}
			p = append(p, ap)
		}
	}

	return p[l:]
}
