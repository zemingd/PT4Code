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
	str := io.nextString()

	l := len(str)
	acc := 0
	for i := 0; i < l/2; i++ {
		if str[i] != str[l-1-i] {
			acc++
		}
	}
	io.PutInt(acc)
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

func (io *IO) nextString() string {
	io.Scanner.Scan()
	return io.Scanner.Text()
}

func (io *IO) nextInt() int {
	io.Scanner.Scan()
	i, _ := strconv.Atoi(io.Scanner.Text())
	return i
}

func (io *IO) PutInt(v int) {
	fmt.Fprintf(io.Writer, "%d\n", v)
}

func (io *IO) PutString(s string) {
	fmt.Fprintf(io.Writer, "%s\n", s)
}
