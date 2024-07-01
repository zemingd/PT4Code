package main

import (
	"bufio"
	"fmt"
	"io"
	"os"
	"strconv"
)

// I/O
type Scanner struct {
	sc *bufio.Scanner
}

func NewScanner() *Scanner {
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	sc.Buffer(make([]byte, 1024), int(1e+9))
	return &Scanner{sc}
}

func (s *Scanner) nextStr() string {
	s.sc.Scan()
	return s.sc.Text()
}

func (s *Scanner) nextInt() int {
	i, e := strconv.Atoi(s.nextStr())
	if e != nil {
		panic(e)
	}
	return i
}

func (s *Scanner) nextFloat() float64 {
	f, e := strconv.ParseFloat(s.nextStr(), 64)
	if e != nil {
		panic(e)
	}
	return f
}

func (s *Scanner) nextRuneSlice() []byte {
	return []byte(s.nextStr())
}

func (s *Scanner) nextIntSlice(n int) []int {
	res := make([]int, n)
	for i := 0; i < n; i++ {
		res[i] = s.nextInt()
	}
	return res
}

func (s *Scanner) nextFloatSlice(n int) []float64 {
	res := make([]float64, n)
	for i := 0; i < n; i++ {
		res[i] = s.nextFloat()
	}
	return res
}

func kaibun(s string) bool {
	i := 0
	j := len(s) - 1
	for i < len(s)/2 {
		if s[i] != s[j] {
			return false
		}
		i = i + 1
		j = j - 1
	}

	return true
}

func check(s string) bool {
	if len(s)%2 == 0 {
		if kaibun(s[:len(s)/2]) == false || kaibun(s[len(s)/2:]) == false {
			return false
		}
	} else {
		if kaibun(s[:len(s)/2]) == false || kaibun(s[len(s)/2+1:]) == false {
			return false
		}
	}
	return true
}

func run(input io.Reader, output io.Writer) int {
	sc := NewScanner()
	S := sc.nextStr()

	if !kaibun(S) {
		fmt.Println("No")
	} else {
		if check(S) {
			fmt.Println("Yes")
		} else {
			fmt.Println("No")
		}
	}

	return 0
}

func main() {
	os.Exit(run(os.Stdin, os.Stdout))
}
