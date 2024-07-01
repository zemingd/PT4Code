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
	count := 0
	maxC := 0
	last := true
	for _, s := range S {
		if s == 'R' {
			if last {
				count++
				if maxC < count {
					maxC = count
				}
			}
			last = true
		} else {
			last = false
			count = 0
		}
	}
	fmt.Println(maxC)
}

func absInt(a int) int      { return int(math.Abs(float64(a))) }
func scan(a ...interface{}) { _, err := fmt.Fscan(sc, a...); pnc(err) }
func scanStr() (s string)   { scan(&s); return }
func scanInt() int          { i, err := strconv.Atoi(scanStr()); pnc(err); return i }
func scanFloat() float64    { f, err := strconv.ParseFloat(scanStr(), 64); pnc(err); return f }
func pnc(err error) {
	if err != nil {
		panic(err)
	}
}
