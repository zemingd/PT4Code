package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	N := ReadInt()
	T, A := ReadInt(), ReadInt()
	Hs := ReadInts(N)

	best := 0
	bestAbs := Abs(float64(A) - Kion(Hs[0], T))

	for i := 1; i < N; i++ {
		kion := Kion(Hs[i], T)
		abs := Abs(float64(A) - kion)
		if bestAbs > abs {
			best = i
			bestAbs = abs
		}
	}

	fmt.Println(best + 1)
}

func Kion(h int, T int) float64 {
	return float64(T) - float64(h)*0.006
}

func Abs(x float64) float64 {
	if x < 0 {
		return -x
	}
	return x
}

func ReadInts(n int) []int {
	ret := make([]int, n)
	for i := 0; i < n; i++ {
		ret[i] = ReadInt()
	}
	return ret
}

var sc = bufio.NewScanner(os.Stdin)

func init()        { sc.Buffer(make([]byte, 256), 1e9); sc.Split(bufio.ScanWords) }
func Read() string { sc.Scan(); return sc.Text() }

func ReadInt() int {
	v, e := strconv.Atoi(Read())
	if e != nil {
		panic(e.Error())
	}
	return v
}
