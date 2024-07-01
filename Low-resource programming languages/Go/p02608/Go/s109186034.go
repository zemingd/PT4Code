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
	al := make([]int, n+1)
	Lim := 317

	// loop回す
	for x := 1; x <= Lim; x++ {
		for y := 1; y <= Lim; y++ {
			for z := 1; z <= Lim; z++ {
				p := f(x, y, z)
				if p <= n {
					al[p]++
				}
			}
		}

	}

	for i := 1; i <= n; i++ {
		fmt.Println(al[i])
	}

}
func f(x int, y int, z int) int {
	return x*x + y*y + z*z + x*y + y*z + x*z
}

func isInteger(x float64) bool {
	return math.Floor(x) == x
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
