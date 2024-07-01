package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

var reached [][]bool

func main() {
	io, flush := NewIO()
	defer flush()
	h,w := io.ScanInt(), io.ScanInt()
	reached =  PrepareEmpty2DBoolArray(w, h)
	maze := io.Scan2DGraph(h)
	search(maze, 0, 0)
	for y := 0; y < len(reached); y++ {
		for x := 0; x < len(reached); x++ {
			if maze[y][x] == "g" && reached[y][x] {
				io.Println("Yes")
				return
			}
		}
	}
	io.Println("No")
}

func search(maze [][]string, x, y int) {
	if x < 0 || y < 0 || y > len(maze)-1 || x > len(maze[0])-1 || maze[y][x] == "#" || reached[y][x] {
		return
	}
	reached[y][x] = true
	search(maze, x, y+1)
	search(maze, x+1, y)
	search(maze, x, y-1)
	search(maze, x-1, y)
}

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

func (io *IO) Scan2DStrings(x, y int) [][]string {
	strings := make([][]string, y)
	for i := 0; i < y; i++ {
		strings[i] = io.ScanStrings(x)
	}
	return strings
}

func (io *IO) Scan2DGraph(y int) [][]string {
	strs := make([][]string, y)
	for i := 0; i < y; i++ {
		strs[i] = strings.Split(io.ScanString(), "")
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

func (io *IO) Println(s string) {
	fmt.Fprintln(io.writer, s)
}

func PrepareEmptyBoolArray(n int) []bool {
	arr := make([]bool, n)
	for i := 0; i < n; i++ {
		arr[i] = false
	}
	return arr
}

func PrepareEmpty2DBoolArray(x, y int) [][]bool {
	arr := make([][]bool, y, x)
	for i := 0; i < y; i++ {
		arr[i] = PrepareEmptyBoolArray(x)
	}
	return arr
}
