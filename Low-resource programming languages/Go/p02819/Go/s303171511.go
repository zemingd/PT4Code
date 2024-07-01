package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

func main() {
	var x int
	sc.nextInts(&x)
	for i := x; i < 1e6; i++ {
		var ng bool
		for j := 2; j <= int(math.Sqrt(float64(i))); j++ {
			if i%j == 0 {
				ng = true
				break
			}
		}
		if !ng {
			fmt.Println(i)
			return
		}
	}
}

type scanner struct {
	sc *bufio.Scanner
}

var sc *scanner

func init() {
	s := bufio.NewScanner(os.Stdin)
	s.Split(bufio.ScanWords)
	sc = &scanner{sc: s}
}

func (s *scanner) nextInts(ints ...*int) {
	for i := range ints {
		s.sc.Scan()
		*ints[i], _ = strconv.Atoi(s.sc.Text())
	}
}

func (s *scanner) nextStr() string {
	s.sc.Scan()
	return s.sc.Text()
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}

func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}

func abs(a int) int {
	if a < 0 {
		return -a
	}
	return a
}
