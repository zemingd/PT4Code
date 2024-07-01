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
	N := io.nextInt()
	arr := make([][][]int, N)
	for i := range arr {
		arr[i] = make([][]int, io.nextInt())
		for j := range arr[i] {
			arr[i][j] = make([]int, 2)
			arr[i][j][0] = io.nextInt()
			arr[i][j][1] = io.nextInt()
		}
	}

	max := 0
	for i := 0; i < pow2(N); i++ {
		for j := 0; j < N; j++ {
			if (i%pow2(j+1))/pow2(j) == 0 {
				//io.PutString(fmt.Sprintf("pass:%b %d", i, j))
				continue
			}
			for _, v := range arr[j] {
				if (i&pow2(v[0]-1) > 0) == (v[1] == 1) {
					continue
				}
				//io.PutString(fmt.Sprintf("goto:%b %d v0:%d v1:%d", i, j, v[0], v[1]))
				goto HOGE
			}
		}
		if n := num(i, N); max < n {
			max = n
			//io.PutString(fmt.Sprintf("set:%b n:%d", i, n))
		}
	HOGE:
	}
	io.PutInt(max)
}

func num(i, N int) int {
	acc := 0
	for j := 0; j < N; j++ {
		if (i%pow2(j+1))/pow2(j) == 1 {
			acc++
		}
	}
	return acc
}

func pow2(n int) int {
	acc := 1
	for i := 0; i < n; i++ {
		acc *= 2
	}
	return acc
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
