package main

import (
	"bufio"
	"fmt"
	"io"
	"os"
	"strconv"
)

var sc = NewScanner(os.Stdin, 1000000)

var a []int

func main() {
	exist := map[int]bool{}

	var tmp int
	var res int
	s := sc.readInt()
	count := 0
	a = append(a, s)
	exist[s] = true
	count++

	for {
		if a[count-1]%2 == 0 {
			tmp = int(a[count-1] / 2)
		} else {
			tmp = a[count-1]*3 + 1
		}
		a = append(a, tmp)
		_, ok := exist[tmp]
		if ok {
			res = count + 1
			break
		}
		exist[tmp] = true
		count++
	}
	fmt.Println(res)
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
