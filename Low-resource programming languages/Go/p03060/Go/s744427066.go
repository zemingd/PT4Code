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
	N, _ := io.nextInt()
	V := make([]int, N)
	C := make([]int, N)
	for i := 0; i < N; i++ {
		V[i], _ = io.nextInt()
	}
	for i := 0; i < N; i++ {
		C[i], _ = io.nextInt()
	}
	payment := 0
	for i := 0; i < N; i++ {
		if dif := V[i] - C[i]; dif > 0 {
			payment += dif
		}
	}
	io.PutInt(payment)
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

func (io *IO) nextInt() (int, error) {
	io.Scanner.Scan()
	i, err := strconv.Atoi(io.Scanner.Text())
	return i, err
}

func (io *IO) PutInt(v int) {
	fmt.Fprintf(io.Writer, "%d\n", v)
}

func (io *IO) PutString(s string) {
	fmt.Fprintf(io.Writer, "%s\n", s)
}
