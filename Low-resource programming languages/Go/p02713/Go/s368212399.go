package main

import (
	"bufio"
	"fmt"
	"math/big"
	"os"
	"strconv"
)

type Row []string

type Data []Row

func gcd2(a, b, c int) uint64 {
	return gcd(gcd(uint64(a), uint64(b)), uint64(c))
}
func gcd(m, n uint64) uint64 {
	x := new(big.Int)
	y := new(big.Int)
	z := new(big.Int)
	a := new(big.Int).SetUint64(m)
	b := new(big.Int).SetUint64(n)
	return z.GCD(x, y, a, b).Uint64()
}

func main() {
	nextReader = newScanner()
	A := nextInt()
	ret := uint64(0)
	// for a := 1; a <= A; a++ {
	// 	for b := 1; b <= A; b++ {
	// 		for c := 1; c <= A; c++ {
	// 			ret += gcd2(a, b, c)
	// 			fmt.Printf("%d,%d,%d = %d\n", a, b, c, gcd2(a, b, c))
	// 		}
	// 	}
	// }

	for a := 1; a <= A; a++ {
		for b := a; b <= A; b++ {
			for c := b; c <= A; c++ {
				if a == b && b == c {
					ret += gcd2(a, b, c)
				} else if a == b || b == c {
					ret += (gcd2(a, b, c) * 3)
				} else {
					ret += (gcd2(a, b, c) * 6)
				}
			}
		}
	}
	fmt.Print(ret)
}

var nextReader func() string

func newScanner() func() string {
	r := bufio.NewScanner(os.Stdin)
	r.Buffer(make([]byte, 1024), int(1e+11))
	r.Split(bufio.ScanWords)
	// r.Split(bufio.ScanLines)
	return func() string {
		r.Scan()
		return r.Text()
	}
}

func CustomScan(data []byte, atEOF bool) (advance int, token []byte, err error) {
	for i := 0; i < len(data); i++ {
		if data[i] == ' ' {
			return i + 1, data[:i], nil
		}
	}
	fmt.Println(data)
	return 0, data, bufio.ErrFinalToken
}

func nextStrings() func() string {
	r := bufio.NewScanner(os.Stdin)
	r.Buffer(make([]byte, 1024), int(1e+11))
	// r.Split(bufio.ScanWords)
	r.Split(CustomScan)
	return func() string {
		r.Scan()
		return r.Text()
	}
}

func nextString() string {
	return nextReader()
}
func nextInt64() int64 {
	v, _ := strconv.ParseInt(nextReader(), 10, 64)
	return v
}
func nextInt() int {
	v, _ := strconv.Atoi(nextReader())
	return v
}
func nextInts(n int) []int {
	r := make([]int, n)
	for i := 0; i < n; i++ {
		r[i] = nextInt()
	}
	return r
}
func nextInt64s(n int) []int64 {
	r := make([]int64, n)
	for i := 0; i < n; i++ {
		r[i] = nextInt64()
	}
	return r
}
func nextFloat64() float64 {
	f, _ := strconv.ParseFloat(nextReader(), 64)
	return f
}

func maxInt(a, b int) int {
	if a > b {
		return a
	} else {
		return b
	}
}
