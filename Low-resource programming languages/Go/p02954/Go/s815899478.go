package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	// sc.Split(bufio.ScanWords)
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

var sc = bufio.NewScanner(os.Stdin)
var rdr = bufio.NewReaderSize(os.Stdin, 1000)

func nextInt() int {
	i, _ := strconv.ParseInt(nextLine(), 10, 64)
	return int(i)
}

func nextLine() string {
	sc.Scan()
	return sc.Text()
}

func readLine() string {
	buf := make([]byte, 0, 1000000)
	for {
		l, p, _ := rdr.ReadLine()
		buf = append(buf, l...)
		if !p {
			break
		}
	}
	return string(buf)
}
