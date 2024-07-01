package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

func newScanner() *bufio.Scanner {
	scanner := bufio.NewScanner(os.Stdin)
	scanner.Split(bufio.ScanWords)
	// buf := make([]byte, 10000)
	// scanner.Buffer(buf, 1000000)
	return scanner
}

func scanInt(s *bufio.Scanner) int {
	if s.Scan() {
		t := s.Text()
		v, err := strconv.Atoi(t)
		if err == nil {
			return v
		}
		panic(err)
	} else {
		panic(s.Err())
	}
}

func scanString(s *bufio.Scanner) string {
	if s.Scan() {
		return s.Text()
	}
	panic(s.Err())
}

func main() {
	sc := newScanner()
	an := scanInt(sc)
	bn := scanInt(sc)
	m := scanInt(sc)

	aMin := 100000
	bMin := 100000
	cMin := math.MaxInt32

	a := make([]int, an)
	b := make([]int, bn)

	for i := 0; i < an; i++ {
		a[i] = scanInt(sc)
		if a[i] < aMin {
			aMin = a[i]
		}
	}

	for i := 0; i < bn; i++ {
		b[i] = scanInt(sc)
		if b[i] < bMin {
			bMin = b[i]
		}
	}

	for i := 0; i < m; i++ {
		x := scanInt(sc)
		y := scanInt(sc)
		c := scanInt(sc)
		p := a[x-1] + b[y-1] - c
		if p < cMin {
			cMin = p
		}
	}

	if aMin+bMin < cMin {
		fmt.Println(aMin + bMin)
	} else {
		fmt.Println(cMin)
	}

}
