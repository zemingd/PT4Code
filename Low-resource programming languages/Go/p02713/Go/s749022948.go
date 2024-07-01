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
	sum := 0
	for n1 := 1; n1 <= k; n1++ {
		for n2 := n1; n2 <= k; n2++ {
			for n3 := n2; n3 <= k; n3++ {
				val := gcd(gcd(n1, n2), n3)
				if n1 == n2 && n2 == n3 {
					sum += val
				} else if n1 == n2 || n2 == n3 {
					sum += val * 3
				} else {
					sum += val * 6
				}
			}
		}
	}

	bw.Printf("%v", sum)
}

func gcd(a, b int) int {
	if (b == 0){
		return a;
	}
	return gcd(b, a % b);
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