package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

var tmp [2000]int
var ans [2000]int

func main() {
	io := NewIo()
	defer io.Flush()

	// parsing int array
	N := io.NextInt()
	X := io.NextInt()
	Y := io.NextInt()
	// fmt.Printf("%v %v %v\n", N, X, Y)

	// var a [2000][2000]int

	var neighbor map[int][]int
	neighbor = make(map[int][]int)
	neighbor[0] = []int{1}
	for i := 1; i < N-1; i++ {
		neighbor[i] = []int{i - 1, i + 1}
	}
	neighbor[N-1] = []int{N - 2}
	neighbor[X-1] = append(neighbor[X-1], Y-1)
	neighbor[Y-1] = append(neighbor[Y-1], X-1)
	// fmt.Printf("%v\n", neighbor)
	// Log("int array", a[0][0])

	for i := 0; i < N; i++ {
		for g := 0; g < N; g++ {
			tmp[g] = 0
		}
		distance := 1
		nextnei := neighbor[i]
		checknei := nextnei
		for p := 0; p < N; p++ {
			nextnei = []int{}
			for _, k := range checknei {
				if tmp[k] == 0 {
					tmp[k] = distance
				}
				for _, t := range neighbor[k] {
					// fmt.Printf("-- %v\n", t)
					if tmp[t] == 0 && t != i {
						nextnei = append(nextnei, t)
					}
				}
				// fmt.Printf("- %v %v %v\n", tmp[0:10], nextnei, len(nextnei))
			}
			checknei = nextnei
			if len(nextnei) == 0 {
				break
			}
			distance++
		}
		for g := i + 1; g < N; g++ {
			ans[tmp[g]]++
		}
		// fmt.Printf("- %v %v %v\n", tmp[0:10], nextnei, len(nextnei))
	}
	// fmt.Printf("%v \n", ans[0:10])
	for i := 1; i < N; i++ {
		fmt.Printf("%v\n", ans[i])
	}

	// fmt.Printf("%v\n", count)
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
