package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	_sc.Split(bufio.ScanWords)
	S := readLine()
	s, ir, il := len(S), 0, -1
	A := make([]int, s)
	for i, c := range S {
		if c == 'R' {
			if il != -1 {
				A[il-1] = (il-ir)/2 + (i-il)/2 + (il-ir)%2
				A[il] = (il-ir)/2 + (i-il)/2 + (i-il)%2
				ir = i
				il = -1
			}
		} else if il == -1 {
			il = i
		}
	}
	A[il-1] = (il-ir)/2 + (s-il)/2 + (il-ir)%2
	A[il] = (il-ir)/2 + (s-il)/2 + (s-il)%2
	for i, a := range A {
		if i == s-1 {
			fmt.Printf("%d\n", a)
		} else {
			fmt.Printf("%d ", a)
		}
	}
}

const _bufferSize = 1000000
var _sc = bufio.NewScanner(os.Stdin)
var _rd = bufio.NewReaderSize(os.Stdin, _bufferSize)

func nextInt() int {
	i, _ := strconv.ParseInt(nextLine(), 10, 64)
	return int(i)
}

func nextLine() string {
	_sc.Scan()
	return _sc.Text()
}

func readLine() string {
	buf := make([]byte, 0, _bufferSize)
	for {
		l, p, _ := _rd.ReadLine()
		buf = append(buf, l...)
		if !p {
			break
		}
	}
	return string(buf)
}
