package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

func configure(scanner *bufio.Scanner) {
	scanner.Split(bufio.ScanWords)
	scanner.Buffer(make([]byte, 1000005), 1000005)
}
func getNextString(scanner *bufio.Scanner) string {
	scanned := scanner.Scan()
	if !scanned {
		panic("scan failed")
	}
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
func getNextFloat64(scanner *bufio.Scanner) float64 {
	i, _ := strconv.ParseFloat(getNextString(scanner), 64)
	return i
}
func main() {
	fp := os.Stdin
	wfp := os.Stdout
	extra := 0
	if os.Getenv("I") == "IronMan" {
		fp, _ = os.Open(os.Getenv("END_GAME"))
		extra = 100
	}
	scanner := bufio.NewScanner(fp)
	configure(scanner)
	writer := bufio.NewWriter(wfp)
	defer func() {
		r := recover()
		if r != nil {
			fmt.Fprintln(writer, r)
		}
		writer.Flush()
	}()
	solve(scanner, writer)
	for i := 0; i < extra; i++ {
		fmt.Fprintln(writer, "-----------------------------------")
		solve(scanner, writer)
	}
}
func solve(scanner *bufio.Scanner, writer *bufio.Writer) {
	n := getNextInt(scanner)
	m := getNextInt(scanner)
	x := getNextInt(scanner)
	cc := make([]int, n)
	aa := makeGrid(n, m)
	for i := 0; i < n; i++ {
		cc[i] = getNextInt(scanner)
		for j := 0; j < m; j++ {
			aa[i][j] = getNextInt(scanner)
		}
	}
	var ans int = math.MaxInt32
	for i := 0; i < 1<<uint(n); i++ {
		c := 0
		xx := make([]int, m)
		for j := 0; j < n; j++ {
			if i>>uint(j)&1 == 0 {
				continue
			}
			for k := 0; k < m; k++ {
				xx[k] += aa[j][k]
			}
			c += cc[j]
		}
		for j := 0; j < m; j++ {
			if xx[j] < x {
				c = math.MaxInt32
				break
			}
		}
		if ans > c {
			ans = c
		}
	}
	if ans == math.MaxInt32 {
		fmt.Fprintln(writer, -1)
		return
	}
	fmt.Fprintln(writer, ans)
}
func makeGrid(h, w int) [][]int {
	index := make([][]int, h, h)
	data := make([]int, h*w, h*w)
	for i := 0; i < h; i++ {
		index[i] = data[i*w : (i+1)*w]
	}
	return index
}
