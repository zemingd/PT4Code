package main

import (
	"bufio"
	"fmt"
	"io"
	"os"
	"strconv"
	"strings"
)

func main() {
	solve(os.Stdin, os.Stdout)
}

func solve(in io.Reader, out io.Writer) {
	bs := NewBufScanner(in)
	bw := NewBufWriter(out)
	defer bw.w.Flush()
	ans := "No"
	if strings.Index(bs.Scan(), "7") > 0 {
		ans = "Yes"
	}
	bw.Printf(ans)
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