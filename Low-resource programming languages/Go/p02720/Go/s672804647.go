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
	bs := NewBufScanner(in)
	bw := NewBufWriter(out)
	defer bw.w.Flush()
	k := bs.IntScan()

	q := make([]int64, 0)

	for i:=1; i<10; i++ {
		q = append(q, int64(i))
	}

	count := 0
	for {
		x := q[0]
		q = q[1:]
		count++
		if count == k {
			bw.Printf("%v", x)
			return
		}

		midVal := 10 * x + x % 10
		if (midVal - 1) % 10 != 9 {
			q = append(q, midVal - 1)
		}
		q = append(q, midVal)
		if (midVal + 1) % 10 != 0 {
			q = append(q, midVal + 1)
		}
	}
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

// Int64Scan Scan Data
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