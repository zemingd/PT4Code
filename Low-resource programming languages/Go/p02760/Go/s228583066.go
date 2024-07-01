package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

func exec(stdin *Stdin, stdout *Stdout) {
	a := make([][]int, 3)
	for i := 0; i < 3; i++ {
		a[i] = make([]int, 3)
	}

	for i := 0; i < 3; i++ {
		for j := 0; j < 3; j++ {
			a[i][j] = stdin.ReadInt()
		}
	}

	n := stdin.ReadInt()
	for i := 0; i < n; i++ {
		b := stdin.ReadInt()
		for x := 0; x < 3; x++ {
			for y := 0; y < 3; y++ {
				if a[x][y] == b {
					a[x][y] = -1
				}
			}
		}
	}

	bingo := false

	for i := 0; i < 3; i++ {
		count := 0
		for j := 0; j < 3; j++ {
			if a[i][j] == -1 {
				count++
			}
		}
		if count == 3 {
			bingo = true
		}
	}

	for j := 0; j < 3; j++ {
		count := 0
		for i := 0; i < 3; i++ {
			if a[i][j] == -1 {
				count++
			}
		}
		if count == 3 {
			bingo = true
		}
	}

	if a[0][0] == -1 && a[1][1] == -1 && a[2][2] == -1 {
		bingo = true
	}
	if a[0][2] == -1 && a[1][1] == -1 && a[2][0] == -1 {
		bingo = true
	}

	if bingo {
		stdout.Println("Yes")
	} else {
		stdout.Println("No")
	}
}

func main() {
	stdout := NewStdout()
	defer stdout.Flush()
	exec(NewStdin(bufio.ScanWords), stdout)
}

type Stdin struct {
	stdin *bufio.Scanner
}

func NewStdin(split bufio.SplitFunc) *Stdin {
	s := Stdin{bufio.NewScanner(os.Stdin)}
	s.stdin.Split(split)
	s.stdin.Buffer(make([]byte, bufio.MaxScanTokenSize), int(math.MaxInt32))
	return &s
}

func (s *Stdin) Read() string {
	s.stdin.Scan()
	return s.stdin.Text()
}

func (s *Stdin) ReadInt() int {
	n, _ := strconv.Atoi(s.Read())
	return n
}

func (s *Stdin) ReadFloat64() float64 {
	n, _ := strconv.ParseFloat(s.Read(), 64)
	return n
}

type Stdout struct {
	stdout *bufio.Writer
}

func NewStdout() *Stdout {
	return &Stdout{bufio.NewWriter(os.Stdout)}
}

func (s *Stdout) Flush() {
	s.stdout.Flush()
}

func (s *Stdout) Println(a ...interface{}) {
	fmt.Fprintln(s.stdout, a...)
}
