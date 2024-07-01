package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func main() {
	var s string
	fmt.Scan(&s)

	for i := 0; i < len(s) - 1; i++ {
		if s[i : i + 1] != s[i + 1 : i + 2] {
			fmt.Println("Yes")
			return
		}
	}
	fmt.Println("No")
	
}

func Max(a, b int) int {
	if a > b {
		return a
	}
	return b
}
 
func MaxInts(n ...int) int {
	max := n[0]
	for _, v := range n[1:] {
		if v > max {
			max = v
		}
	}
	return max
}
 
type Reader struct {
	r    *bufio.Reader
	size int
	sep  string
}
 
func NewReader() *Reader {
	size := 4096
	return &Reader{
		r:    bufio.NewReaderSize(os.Stdin, size),
		size: size,
		sep:  " ",
	}
}
 
func (rdr *Reader) ReadLine() string {
	buf := make([]byte, 0, rdr.size)
	for {
		line, isPrefix, err := rdr.r.ReadLine()
		if err != nil {
			panic(err)
		}
		buf = append(buf, line...)
		if !isPrefix {
			break
		}
	}
	return string(buf)
}
 
func (rdr *Reader) ReadStrs() []string {
	return strings.Split(rdr.ReadLine(), rdr.sep)
}
 
func (rdr *Reader) ReadInts() []int {
	a := rdr.ReadStrs()
	b := make([]int, len(a))
	for i, v := range a {
		b[i], _ = strconv.Atoi(v)
	}
	return b
}
