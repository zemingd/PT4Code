package main

import (
	"bufio"
	"fmt"
	"io"
	"os"
	"strconv"
)

var sc = NewScanner(os.Stdin, 1000000)

func main() {
	A := sc.readInt() // 500円玉
	B := sc.readInt() // 100円玉
	C := sc.readInt() // 50円玉
	X := sc.readInt() // 目標金額

	cnt := 0
	for a := 0; a <= A; a++ {
		for b := 0; b <= B; b++ {
			for c := 0; c <= C; c++ {
				res := a*500 + b*100 + c*50
				if res == X {
					cnt++
				}
			}
		}
	}
	fmt.Println(cnt)

}

type Scanner struct {
	*bufio.Scanner
}

func (scn *Scanner) readInt() int {
	scn.Scanner.Scan()
	i, _ := strconv.Atoi(scn.Scanner.Text())
	return i
}

func NewScanner(r io.Reader, bufSize int) *Scanner {
	buf := make([]byte, bufSize)
	scn := bufio.NewScanner(r)
	scn.Buffer(buf, bufSize)
	scn.Split(bufio.ScanWords)
	return &Scanner{scn}
}
