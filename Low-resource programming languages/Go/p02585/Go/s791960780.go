package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func Scan() string {
	sc.Scan()
	return sc.Text()
}
func iScan() int {
	n, _ := strconv.Atoi(Scan())
	return n
}
func fScan() float64 {
	n, _ := strconv.ParseFloat(Scan(), 64)
	return n
}
func stringToInt(s string) int {
	n, _ := strconv.Atoi(s)
	return n
}
func SScan(n int) []string {
	a := make([]string, n)
	for i := 0; i < n; i++ {
		a[i] = Scan()
	}
	return a
}
func iSScan(n int) []int {
	a := make([]int, n)
	for i := 0; i < n; i++ {
		a[i] = iScan()
	}
	return a
}
func abs(x int) int {
	if x < 0 {
		x = -x
	}
	return x
}
func larger(a, b int) int {
	if a < b {
		return b
	} else {
		return a
	}
}
func smaller(a, b int) int {
	if a > b {
		return b
	} else {
		return a
	}
}
func max(a []int) int {
	x := a[0]
	for i := 0; i < len(a); i++ {
		if x < a[i] {
			x = a[i]
		}
	}
	return x
}
func min(a []int) int {
	x := a[0]
	for i := 0; i < len(a); i++ {
		if x > a[i] {
			x = a[i]
		}
	}
	return x
}
func sum(a []int) int {
	x := 0
	for _, v := range a {
		x += v
	}
	return x
}
func floatSum(a []float64) float64 {
	x := 0.
	for _, v := range a {
		x += v
	}
	return x
}

var mod int = 1000000007

func main() {
	buf := make([]byte, 0)
	sc.Buffer(buf, mod)
	sc.Split(bufio.ScanWords)
	n, originalK := iScan(), iScan()
	p := iSScan(n)
	for i, _ := range p {
		p[i]--
	}
	c := iSScan(n)
	ans := -mod * mod
	for i := 0; i < n; i++ {
		d := make(map[int]int)
		x := i
		d[x] = 0
		l := 0
		s := 0
		k := originalK
		loopStart := -1
		loopFin := -1
		log := make([]int, 1, n)
		for {
			s += c[p[x]]
			l++
			log = append(log, s)
			if _, ok := d[p[x]]; ok {
				loopStart = d[p[x]]
				loopFin = d[x] + 1
				break
			} else {
				d[p[x]] = d[x] + 1
				x = p[x]
			}
		}
		y := max(log[1:])
		if k < loopFin {
			ans = larger(ans, y)
		} else {
			z := log[loopStart]
			if log[loopFin]-log[loopStart] > 0 {
				z += (log[loopFin] - log[loopStart]) * ((k - loopStart) / (loopFin - loopStart))
			}
			k = (k - loopStart) % (loopFin - loopStart)
			y := larger(z, y)
			for j := 1; j <= k; j++ {
				y = larger(y, z+log[loopStart+k]-log[loopStart])
			}
			ans = larger(ans, y)
		}
	}
	fmt.Println(ans)
}
