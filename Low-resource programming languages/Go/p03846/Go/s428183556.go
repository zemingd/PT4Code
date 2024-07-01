package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

const mod = 1000000007

type IO struct {
	scanner *bufio.Scanner
	writer  *bufio.Writer
}

func NewIO() (*IO, func()) {
	io := &IO{
		scanner: newScanner(),
		writer:  newWriter(),
	}
	return io, func() { io.writer.Flush() }
}

func newScanner() *bufio.Scanner {
	s := bufio.NewScanner(os.Stdin)
	s.Buffer(make([]byte, 1000005), 1000005)
	s.Split(bufio.ScanWords)
	return s
}

func newWriter() *bufio.Writer {
	return bufio.NewWriter(os.Stdout)
}

func (io *IO) ScanString() string {
	if !io.scanner.Scan() {
		panic("scan string failed")
	}
	return io.scanner.Text()
}

func (io *IO) ScanStrings(n int) []string {
	strs := make([]string, n)
	for i := 0; i < n; i++ {
		strs[i] = io.ScanString()
	}
	return strs
}

func (io *IO) ScanInt() int {
	return int(io.ScanInt64())
}

func (io *IO) ScanInts(n int) []int {
	ints := make([]int, n)
	for i := 0; i < n; i++ {
		ints[i] = io.ScanInt()
	}
	return ints
}

func (io *IO) Scan2DInts(x, y int) [][]int {
	ints := make([][]int, y)
	for i := 0; i < y; i++ {
		ints[i] = io.ScanInts(x)
	}
	return ints
}

func (io *IO) ScanInt64() int64 {
	i, err := strconv.ParseInt(io.ScanString(), 10, 64)
	if err != nil {
		panic(err)
	}
	return i
}

func (io *IO) ScanFloat64() float64 {
	i, _ := strconv.ParseFloat(io.ScanString(), 64)
	return i
}

func (io *IO) ScanFloat64s(n int) []float64 {
	floats := make([]float64, n)
	for i := 0; i < n; i++ {
		floats[i] = io.ScanFloat64()
	}
	return floats
}

func (io *IO) Println(a ...interface{}) {
	fmt.Fprintln(io.writer, a...)
}

func Pow64(x, y int64) int64 {
	return int64(math.Pow(float64(x), float64(y)))
}

func Pow(x, y int) int {
	return int(Pow64(int64(x), int64(y)))
}

func main() {
	io, flush := NewIO()
	defer flush()

	n := io.ScanInt()
	a := io.ScanInts(n)
	absCountMap := make(map[int]int)
	if n%2 == 0 {
		for _, abs := range a {
			if abs == 0 {
				io.Println(0)
				return
			}
			absCountMap[abs] += 1
		}
	} else {
		zeroNum := 0
		for _, abs := range a {
			if abs == 0 {
				zeroNum += 1
				if zeroNum > 1 {
					io.Println(0)
					return
				}
				continue
			}
			absCountMap[abs] += 1
		}
	}
	for _, count := range absCountMap {
		if count != 0 {
			io.Println(0)
			return
		}
	}
	ans := Pow(2, n/2) % mod
	io.Println(ans)
}
