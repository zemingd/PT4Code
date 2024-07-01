package main

import (
	"bufio"
	"fmt"
	"io"
	"os"
	"strconv"
)

func main() {
	solve(os.Stdin, os.Stdout)
}

func solve(in io.Reader, out io.Writer) {
	var bs = NewBufScanner(in)
	var bw = NewBufWriter(out)
	defer bw.w.Flush()

	a := bs.IntScan()
	b := bs.IntScan()
	c := bs.IntScan()
	x := bs.IntScan()

	sum := 500 * a + 100 * b + 50 * c
	if sum < x {
		bw.Printf("0\n")
		return
	}

	cnt := 0
	for bg := 0; bg <= a; bg++ {
		if 500 * bg + 100 * b + 50 * c < x {
			continue
		}
		for md := 0; md <= b; md++ {
			if 500 * bg + 100 * md + 50 * c < x {
				continue
			}
			for sm := 0; sm <= c; sm++ {
				if 500 * bg + 100 * md + 50 * sm == x {
					cnt++
				}
			}
		}
	}
	bw.Printf("%d\n", cnt)
}

// BufScanner original scanner
type BufScanner struct {
	s *bufio.Scanner
}

// NewBufScanner constructer
func NewBufScanner(in io.Reader) *BufScanner {
	s := bufio.NewScanner(in)
	s.Buffer(make([]byte, 1024), 1e+9)
	s.Split(bufio.ScanWords)
	return &BufScanner{
		s: s,
	}
}

// Scan Scan Data
func (b *BufScanner) Scan() string {
	b.s.Scan()
	return b.s.Text()
}

// IntScan Scan Data
func (b *BufScanner) IntScan() int {
	v, err := strconv.Atoi(b.Scan())
	if err != nil {
		panic(err)
	}
	return v
}

// BufWriter original writer
type BufWriter struct {
	w *bufio.Writer
}

// NewBufWriter constructer
func NewBufWriter(out io.Writer) *BufWriter {
	w := bufio.NewWriter(out)
	return &BufWriter{
		w: w,
	}
}

// Printf Output file
func (b *BufWriter) Printf(format string, a ...interface{}) {
	fmt.Fprintf(b.w, format, a...)
}