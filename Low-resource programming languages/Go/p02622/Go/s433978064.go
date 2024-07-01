package main

import (
	"bufio"
	"fmt"
	basicIO "io"
	"os"
	"strconv"
)

func main() {
	protagonist(os.Stdin, os.Stdout)
}

func protagonist(r basicIO.Reader, w basicIO.Writer) {
	io := NewIO(r, w)

	S := []rune(io.readString())
	T := []rune(io.readString())

	count := 0
	for i := 0; i < len(S); i++ {
		if S[i] != T[i] {
			count++
		}
	}
	io.putInt(count)
}

type IO struct {
	Scanner *bufio.Scanner
	Writer  basicIO.Writer
}

func NewIO(r basicIO.Reader, w basicIO.Writer) *IO {
	s := bufio.NewScanner(r)
	s.Split(bufio.ScanWords)
	return &IO{
		Scanner: s,
		Writer:  w,
	}
}

func (io *IO) readString() string {
	io.Scanner.Scan()
	return io.Scanner.Text()
}

func (io *IO) readStringSlice(num int) []string {
	slice := make([]string, num)
	for i, _ := range slice {
		slice[i] = io.readString()
	}
	return slice
}

func (io *IO) readInt() int {
	io.Scanner.Scan()
	i, _ := strconv.Atoi(io.Scanner.Text())
	return i
}

func (io *IO) readIntArray(num int) []int {
	slice := make([]int, num)
	for i, _ := range slice {
		slice[i] = io.readInt()
	}
	return slice
}

func (io *IO) putInt(v int) {
	fmt.Fprintf(io.Writer, "%d\n", v)
}

func (io *IO) putString(s string) {
	fmt.Fprintf(io.Writer, "%s\n", s)
}
