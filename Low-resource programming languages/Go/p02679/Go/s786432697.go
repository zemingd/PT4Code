package main

import (
	"bufio"
	"fmt"

	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func Scanner() string {
	sc.Scan()
	return sc.Text()
}

func intScanner() int {
	n, _ := strconv.Atoi(Scanner())
	return n
}

func floatScanner() float64 {
	n, _ := strconv.ParseFloat(Scanner(), 64)
	return n
}
func stringToInt(s string) int {
	n, _ := strconv.Atoi(s)
	return n
}

var mod int

func main() {
	mod = 1000000007
	buf := make([]byte, 0)
	sc.Buffer(buf, mod)
	sc.Split(bufio.ScanWords)
	n := intScanner()
	p := make(map[[2]int]int)
	m := make(map[[2]int]int)
	az := 0
	bz := 0
	cz := 0
	for i := 0; i < n; i++ {
		a := intScanner()
		b := intScanner()
		g := gcd(a, b)
		if (a > 0 && b > 0) || (a < 0 && b < 0) {
			p[[2]int{abs(a / g), abs(b / g)}]++
		} else if (a < 0 && b > 0) || (a > 0 && b < 0) {
			m[[2]int{abs(a / g), abs(b / g)}]++
		} else if a == 0 && b == 0 {
			cz++
		} else if a == 0 {
			az++
		} else if b == 0 {
			bz++
		}
	}
	x := make(map[[2]int]int)
	for k, v := range p {
		x[k] = repeatPow(2, v, mod)
	}
	for k, v := range m {
		w := [2]int{k[1], k[0]}
		if _, ok := x[w]; ok {
			x[w]--
		}
		x[w] += repeatPow(2, v, mod)
	}
	y := 1
	for _, v := range x {
		y *= v
		y %= mod
	}
	y = y * (repeatPow(2, az, mod)%mod + repeatPow(2, bz, mod)%mod - 1) % mod
	y += cz
	y -= 1
	fmt.Println(y % mod)
}
func gcd(a, b int) int {
	if b == 0 {
		return a
	}
	return gcd(b, a%b)
}
func repeatPow(x, y, d int) int {
	if y == 0 {
		return 1
	} else if y == 1 {
		return x
	} else {
		z := repeatPow(x, y/2, d)
		if y%2 == 0 {
			return z * z % d
		} else {
			return z * z % d * x % d
		}
	}
}
func abs(x int) int {
	if x < 0 {
		x = -x
	}
	return x
}
