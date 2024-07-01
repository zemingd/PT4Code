package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

var (
	sc = bufio.NewReader(os.Stdin)
)

func main() {
	N := scanInt()
	A := make([]int, N)
	for i := 0; i < N; i++ {
		A[i] = scanInt()
	}

	s := 0
	cur := A[0]
	for i := 1; i < N; i++ {
		if A[i] > cur {
			cur = A[i]
			continue
		}
		s += cur - A[i]
	}
	fmt.Println(s)
}

func abs(a int) int         { return int(math.Abs(float64(a))) }
func scan(a ...interface{}) { _, err := fmt.Fscan(sc, a...); pnc(err) }
func scanStr() (s string)   { scan(&s); return }
func scanInt() int          { i, err := strconv.Atoi(scanStr()); pnc(err); return i }
func scanFloat() float64    { f, err := strconv.ParseFloat(scanStr(), 64); pnc(err); return f }
func pnc(err error) {
	if err != nil {
		panic(err)
	}
}
