package main

import (
	"bufio"
	"fmt"
	"io"
	"os"
	"strconv"
)

var sc *bufio.Scanner

const BufferSize = 1024

func nextUint64() uint64 {
	if !sc.Scan() {
		panic(nil)
	}
	i, e := strconv.ParseUint(sc.Text(), 0, 64)
	if e != nil {
		panic(e)
	}
	return i
}

var production bool

func debugf(format string, v ...interface{}) {
	if !production {
		fmt.Printf(format, v...)
	}
}

func GCD(a, b uint64) uint64 {
	for b != 0 {
		t := b
		b = a % b
		a = t
	}
	return a
}

func primeFactors(n uint64) (pfs map[uint64]uint64) {
	pfs = make(map[uint64]uint64)
	for n%2 == 0 {
		pfs[2]++
		n = n / 2
	}

	var i uint64
	for i = 3; i*i <= n; i = i + 2 {
		for n%i == 0 {
			pfs[i]++
			n = n / i
		}
	}

	if n > 2 {
		pfs[n]++
	}
	return
}

func answer(reader io.Reader, writer io.Writer) {
	sc = bufio.NewScanner(reader)
	buf := make([]byte, BufferSize)
	sc.Buffer(buf, 1e+6)
	sc.Split(bufio.ScanWords)
	a := nextUint64()
	b := nextUint64()

	g := GCD(a, b)
	debugf("%v\n", g)
	pf := primeFactors(g)
	debugf("%v\n", pf)
	ans := len(pf) + 1

	_, _ = fmt.Fprintf(writer, "%d", ans)
}

func main() {
	production = true
	answer(os.Stdin, os.Stdout)
}
