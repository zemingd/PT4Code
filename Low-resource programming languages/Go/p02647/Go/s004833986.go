package main

import (
	"bufio"
	"fmt"
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
	k := getNextInt(scanner)
	aa := make([]int, n)
	for i := 0; i < n; i++ {
		aa[i] = getNextInt(scanner)
	}
	var sum int64
	for i := 0; i < k; i++ {
		aa, sum = update(n, aa)
		if sum == int64(n)*int64(n) {
			break
		}
	}
	for i := 0; i < n; i++ {
		fmt.Fprintln(writer, aa[i])
	}
}

func update(n int, aa []int) ([]int, int64) {
	sum := int64(0)
	bb := newDecomposition(n)
	for i := 0; i < n; i++ {
		l := i - aa[i]
		if l < 0 {
			l = 0
		}
		r := i + aa[i] + 1
		if r >= n {
			r = n
		}
		bb.rangeadd(l, r, 1)
	}
	cc := make([]int, n)
	for i := 0; i < n; i++ {
		cc[i] = bb.get(i)
		sum += int64(cc[i])
	}
	return cc, sum
}

type decomposition struct {
	chunk  int
	bucket [][]int
}

func newDecomposition(n int) decomposition {
	bucket := make([][]int, 1)
	bucket[0] = make([]int, n)
	chunk := 8
	for i := 0; n > 1; i++ {
		n = (n-1)/chunk + 1
		bucket = append(bucket, make([]int, n))
	}
	return decomposition{
		chunk:  chunk,
		bucket: bucket,
	}
}
func (dec *decomposition) upleft(l int) int {
	return (l + dec.chunk - 1) / dec.chunk
}
func (dec *decomposition) upright(r int) int {
	return r / dec.chunk
}
func (dec *decomposition) add(index int, value int) {
	h := len(dec.bucket)
	for i := 0; i < h; i++ {
		dec.bucket[i][index] += value
		index /= dec.chunk
	}
}
func (dec *decomposition) get(index int) int {
	value := 0
	h := len(dec.bucket)
	for i := 0; i < h; i++ {
		value += dec.bucket[i][index]
		index /= dec.chunk
	}
	return value
}
func (dec *decomposition) rangeadd(l, r int, value int) {
	dec.rangeaddh(l, r, 0, value)
}
func (dec *decomposition) rangeaddh(l, r, h int, value int) {
	ll := dec.upleft(l)
	rr := dec.upright(r)
	for i := l; i < r && i < ll*dec.chunk; i++ {
		dec.bucket[h][i] += value
	}
	if ll < rr {
		dec.rangeaddh(ll, rr, h+1, value)
	}
	for i := rr * dec.chunk; i < r && ll <= rr; i++ {
		dec.bucket[h][i] += value
	}
}
func (dec *decomposition) rangesum(l, r int) int {
	return dec.rangesumh(l, r, 0)
}
func (dec *decomposition) rangesumh(l, r, h int) int {
	var sum int
	ll := dec.upleft(l)
	rr := dec.upright(r)
	for i := l; i < r && i < ll*dec.chunk; i++ {
		sum += dec.bucket[h][i]
	}
	if ll < rr {
		sum += dec.rangesumh(ll, rr, h+1)
	}
	for i := rr * dec.chunk; i < r && ll <= rr; i++ {
		sum += dec.bucket[h][i]
	}
	return sum
}
