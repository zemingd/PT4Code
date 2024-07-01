package main

import (
"bufio"
"fmt"
"os"
"strconv"
"strings"
	"sort"
)

type Io struct {
	reader    *bufio.Reader
	writer    *bufio.Writer
	tokens    []string
	nextToken int
}

func NewIo() *Io {
	return &Io{
		reader: bufio.NewReader(os.Stdin),
		writer: bufio.NewWriter(os.Stdout),
	}
}

func (io *Io) Flush() {
	err := io.writer.Flush()
	if err != nil {
		panic(err)
	}
}

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

func (io *Io) NextInt() int {
	i, err := strconv.Atoi(io.Next())
	if err != nil {
		panic(err)
	}
	return i
}

func (io *Io) NextInt64() int64 {
	i, err := strconv.ParseInt(io.Next(), 10, 64)
	if err != nil {
		panic(err)
	}
	return i
}


func (io *Io) NextFloat() float64 {
	i, err := strconv.ParseFloat(io.Next(), 64)
	if err != nil {
		panic(err)
	}
	return i
}

func (io *Io) PrintLn(a ...interface{}) {
	fmt.Fprintln(io.writer, a...)
}

func (io *Io) Printf(format string, a ...interface{}) {
	fmt.Fprintf(io.writer, format, a...)
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

func absi(a int) int {
	if a > 0 {
		return a
	} else {
		return -a
	}
}

func b2i(b bool) int {
	if b {
		return 1
	}
	return 0
}

type Int64s []int64
func (f Int64s) Len() int {
	return len(f)
}
func (f Int64s) Less(i, j int) bool {
	return f[i] < f[j]
}

func (f Int64s) Swap(i, j int) {
	f[i], f[j] = f[j], f[i]
}

func stdUnique(a *[]string) {
	j := 0
	for i := range *a {
		if i > 0 && (*a)[i-1] == (*a)[i] {
			continue
		}
		(*a)[j] = (*a)[i]
		j++
	}

	*a = (*a)[:j]
}

func solve(io *Io) {
	s := io.Next()
	k := io.NextInt()

	v := make([]string, 0)
	for i := range s {
		for j := 1; j <= k; j++ {
			if i + j > len(s) {
				break
			}
			v = append(v, s[i:i+j])
		}
	}

	sort.Strings(v)
	stdUnique(&v)
	io.PrintLn(v[k-1])
}

func main() {
	io := NewIo()
	defer io.Flush()

	solve(io)
}