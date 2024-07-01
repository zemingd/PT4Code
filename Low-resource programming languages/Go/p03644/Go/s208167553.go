package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
	scanInit()

	n := nextInt()
	fmt.Println(maxpow2(n))

}

// nを超えない最大の2^m
// ex. 100->64, 32->32, 1->1
func maxpow2(n int) int {
	return pow(2, int(math.Log2(float64(n))))
}

func pow(a, b int) int {
	var ret int = 1
	for b > 0 {
		if (b & 1) == 1 {
			ret *= a
		}
		a *= a
		b >>= 1
	}
	return ret
}

// ---- readfunc
func scanInit() {
	const cap = 64 * 1024
	var buf = make([]byte, cap)
	sc.Buffer(buf, cap)
	sc.Split(bufio.ScanWords)
	return
}
func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}
func nextStr() string {
	sc.Scan()
	return sc.Text()
}
