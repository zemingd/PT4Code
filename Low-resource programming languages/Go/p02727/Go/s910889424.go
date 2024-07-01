package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
	"strings"
)

func main() {
	io := NewIo()
	defer io.Flush()

	// AUTOGENERAT

	X := io.NextInt()
	Y := io.NextInt()
	A := io.NextInt()
	B := io.NextInt()
	C := io.NextInt()

	// parsing int array
	// var a [100000]int
	// var b [100000]int
	var p [100000]int
	var q [100000]int
	var r [300000]int
	for i := 0; i < A; i++ {
		p[i] = io.NextInt()
	}
	for i := 0; i < B; i++ {
		q[i] = io.NextInt()
	}
	for i := 0; i < C; i++ {
		r[i] = io.NextInt()
	}
	sort.Sort(sort.Reverse(sort.IntSlice(p[:])))
	sort.Sort(sort.Reverse(sort.IntSlice(q[:])))
	for i := 0; i < X; i++ {
		r[C+i] = p[i]
	}
	for i := 0; i < Y; i++ {
		r[C+X+i] = q[i]
	}
	sort.Sort(sort.Reverse(sort.IntSlice(r[:])))
	res := 0
	for i := 0; i < X+Y; i++ {
		res += r[i]
	}
	fmt.Printf("%v\n", res)
	os.Exit(0)
	// Log("", X)
	// Log("", Y)
	// Log("int array", a[0:10])
	// Log("int array", b[0:10])
	// Log("int array", p[0:10])
	// Log("int array", q[0:10])
	// Log("int array", r[0:10])

	rr := 0
	rp := 0
	rq := 0

	for {
		if (rp >= X && rq >= Y) || rr >= C {
			break
		}
		tp := r[rr] - p[X-1-rp]
		tq := r[rr] - q[Y-1-rq]
		if tp <= 0 && tq <= 0 {
			break
		}
		if rp < X && rq < Y {
			if tp >= tq {
				p[X-1-rp] = r[rr]
				rr++
				rp++
			} else {
				q[Y-1-rq] = r[rr]
				rr++
				rq++
			}
		} else if rp < X {
			if tp > 0 {
				p[X-1-rp] = r[rr]
				rr++
				rp++
			}
		} else if rq < Y {
			if tq > 0 {
				q[Y-1-rq] = r[rr]
				rr++
				rq++
			}
		} else {
			break
		}
	}
	// Log("int array", p[0:10])
	// Log("int array", q[0:10])
	count := 0
	for i := 0; i < X; i++ {
		// fmt.Printf("add %d\n", p[i])
		count += p[i]
	}
	for i := 0; i < Y; i++ {
		// fmt.Printf("add %d\n", q[i])
		count += q[i]
	}
	fmt.Printf("%v\n", count)

	// parsing string as byte array
	// var b [10000]byte
	// str := io.Next()
	// for i := 0 ; i < len(str); i++ {
	// 	b[i] = string[i]
	// }
	// Log("byte array", b)

	// fmt.Printf("%d %d %d\n", N, M, intMax(N, M))
	// fmt.Printf("Lucas %d %d\n", combMod(N, M, 13), combination(N, M))

	// write your own code here
}

// Libraries

type Io struct {
	reader    *bufio.Reader
	writer    *bufio.Writer
	tokens    []string
	nextToken int
}

// NewIo
func NewIo() *Io {
	return &Io{
		reader: bufio.NewReader(os.Stdin),
		writer: bufio.NewWriter(os.Stdout),
	}
}

// Flush
func (io *Io) Flush() {
	err := io.writer.Flush()
	if err != nil {
		panic(err)
	}
}

// NextLine
func (io *Io) NextLine() string {
	var buffer []byte
	for {
		line, isPrefix, err := io.reader.ReadLine()
		if err != nil {
			panic(err)
		}
		buffer = append(buffer, line...)
		if !isPrefix {
			break
		}
	}
	return string(buffer)
}

// Next
func (io *Io) Next() string {
	for io.nextToken >= len(io.tokens) {
		line := io.NextLine()
		io.tokens = strings.Fields(line)
		io.nextToken = 0
	}
	r := io.tokens[io.nextToken]
	io.nextToken++
	return r
}

// NextInt
func (io *Io) NextInt() int {
	i, err := strconv.Atoi(io.Next())
	if err != nil {
		panic(err)
	}
	return i
}

// NextFloat
func (io *Io) NextFloat() float64 {
	i, err := strconv.ParseFloat(io.Next(), 64)
	if err != nil {
		panic(err)
	}
	return i
}

// PrintLn
func (io *Io) PrintLn(a ...interface{}) {
	fmt.Fprintln(io.writer, a...)
}

// Printf
func (io *Io) Printf(format string, a ...interface{}) {
	fmt.Fprintf(io.writer, format, a...)
}

// PrintIntLn
func (io *Io) PrintIntLn(a []int) {
	b := []interface{}{}
	for _, x := range a {
		b = append(b, x)
	}
	io.PrintLn(b...)
}

// PrintStringLn
func (io *Io) PrintStringLn(a []string) {
	b := []interface{}{}
	for _, x := range a {
		b = append(b, x)
	}
	io.PrintLn(b...)
}

// Log
func Log(name string, value interface{}) {
	fmt.Fprintf(os.Stderr, "%s=%+v\n", name, value)
}

func intMin(a, b int) int {
	if a < b {
		return a
	}
	return b
}

func intMax(a, b int) int {
	if a > b {
		return a
	}
	return b
}

// direct calculation of combination
// n, m should be "small"
func combination(n, m int) int {
	if m > n {
		return 0
	} else if m == n || m == 0 {
		return 1
	} else {
		res := 1
		for i := 0; i < m; i++ {
			res *= (n - i)
		}
		for i := 1; i <= m; i++ {
			res /= i
		}
		return res
	}
}

// caluclate combination modulo based on Lucas theorem
func lucas(n, m, p int) int {
	ntemp := n
	mtemp := m
	res := 1
	for i := 0; i < 100; i++ {
		// fmt.Printf("ntemp: %d\n", ntemp)
		nreminder := ntemp % p
		ntemp = ntemp / p
		mreminder := mtemp % p
		mtemp = mtemp / p
		res = res * (combination(nreminder, mreminder) % p)
		if ntemp == 0 {
			break
		}
	}
	return res % p
}

func combMod(n, m, p int) int {
	return lucas(n, m, p)
}
