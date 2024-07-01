package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func main() {
	io := NewIo()
	S, Q := io.NextLine(), io.NextInt64()
	o := S
	changed := false
	pre := ""
	suf := ""
	for i := 0; i < int(Q); i++ {
		ip := getStrSice(io.NextLine())
		if ip[0] == "1" {
			if changed {
				changed = false
			} else {
				changed = true
			}
		} else {
			if !changed {
				if ip[1] == "1" {
					pre = pre + ip[2]
				} else {
					suf = suf + ip[2]
				}
			} else {
				if ip[1] == "1" {
					suf = suf + ip[2]
				} else {
					pre = pre + ip[2]
				}
			}
		}
	}
	if changed {
		o = reverse(suf) + o + pre
	} else {
		o = reverse(pre) + o + suf
	}
	fmt.Println(o)
}

func reverse(s string) string {
	rs := []rune(s)
	for i, j := 0, len(s)-1; i < j; i, j = i+1, j-1 {
		rs[i], rs[j] = rs[j], rs[i]
	}
	return string(rs)
}

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

func (io *Io) PrintInt64(a []int64) {
	b := []interface{}{}
	for _, x := range a {
		b = append(b, x)
	}
	io.PrintLn(b...)
}

func (io *Io) PrintFloat64(a []float64) {
	b := []interface{}{}
	for _, x := range a {
		b = append(b, x)
	}
	io.PrintLn(b...)
}

func (io *Io) PrintStringLn(a []string) {
	b := []interface{}{}
	for _, x := range a {
		b = append(b, x)
	}
	io.PrintLn(b...)
}

func getInt64Sice(arrStr string) []int64 {
	cols := strings.Split(arrStr, " ")
	a := make([]int64, len(cols))
	for i := 0; i < len(cols); i++ {
		v, err := strconv.ParseInt(cols[i], 10, 64)
		if err != nil {
			panic(err)
		}
		a[i] = v
	}
	return a
}

func getStrSice(arrStr string) []string {
	cols := strings.Split(arrStr, " ")
	a := make([]string, len(cols))
	for i := 0; i < len(cols); i++ {
		a[i] = cols[i]
	}
	return a
}

func getFloatSice(arrStr string) []float64 {
	cols := strings.Split(arrStr, " ")
	a := make([]float64, len(cols))
	for i := 0; i < len(cols); i++ {
		f, err := strconv.ParseFloat(cols[i], 64)
		if err != nil {
			panic(err)
		}
		a[i] = f
	}
	return a
}
