package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"sort"
	"strconv"
)

type AcScanner struct {
	scanner *bufio.Scanner
}

func NewScanner() *AcScanner {
	scanner := bufio.NewScanner(os.Stdin)
	scanner.Split(bufio.ScanWords)
	buf := make([]byte, 10000)
	scanner.Buffer(buf, 1000000)
	return &AcScanner{scanner}
}

func (s *AcScanner) Scan() bool {
	if res := s.scanner.Scan(); res {
		return true
	}
	if err := s.scanner.Err(); err != nil {
		panic(err)
	}
	return false
}

func (s *AcScanner) ScanInt() int {
	s.Scan()
	t := s.scanner.Text()
	v, err := strconv.Atoi(t)
	if err == nil {
		return v
	} else {
		panic(err)
	}
}

func (s *AcScanner) ScanInts(n int) []int {
	ret := make([]int, n)
	for i := 0; i < n; i++ {
		x := s.ScanInt()
		ret[i] = x
	}
	return ret
}

func main() {
	var an, bn, m int
	fmt.Scan(&an, &bn, &m)

	aMin := math.MaxInt32
	bMin := math.MaxInt32
	pMin := math.MaxInt32

	s := NewScanner()
	a := s.ScanInts(an)
	b := s.ScanInts(bn)

	// for i := 0; i < an; i++ {
	// 	fmt.Scan(&a[i])
	// 	if a[i] < aMin {
	// 		aMin = a[i]
	// 	}
	// }
	// for i := 0; i < bn; i++ {
	// 	fmt.Scan(&b[i])
	// 	if b[i] < bMin {
	// 		bMin = b[i]
	// 	}
	// }

	for i := 0; i < m; i++ {
		var x, y, c int
		fmt.Scan(&x, &y, &c)
		p := a[x-1] + b[y-1] - c
		if p < pMin {
			pMin = p
		}
	}

	sort.Ints(a)
	sort.Ints(b)
	aMin = a[0]
	bMin = b[0]

	if aMin+bMin < pMin {
		fmt.Println(aMin + bMin)
	} else {
		fmt.Println(pMin)
	}

}
