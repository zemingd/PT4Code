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
	S := scanStr()
	c := 0
	r := 0
	for _, s := range S {
		if s == 'R' {
			c++
			if r < c {
				r = c
			}
		} else {
			c = 0
		}
	}
	fmt.Println(r)
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
