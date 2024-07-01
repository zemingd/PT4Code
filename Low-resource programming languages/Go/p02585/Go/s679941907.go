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
	n, k := iScan(), iScan()
	p := iSScan(n)
	for i, _ := range p {
		p[i]--
	}
	c := iSScan(n)
	ans := max(c)
	for i := 0; i < n; i++ {
		d := make(map[int]int)
		x := i
		d[x] = 0
		s := 0
		idx := 0
		loopStart := -1
		loopFin := -1
		log := make([]int, n+10)
		for {
			s += c[p[x]]
			idx++
			log[idx] = s
			ans = larger(ans, s)
			if _, ok := d[p[x]]; ok {
				loopStart = d[p[x]]
				loopFin = d[x] + 1
				break
			} else {
				d[p[x]] = d[x] + 1
				x = p[x]
			}
		}
		loopSum := log[loopFin] - log[loopStart]
		if k > loopFin && loopSum > 0 {
			dif := loopFin - loopStart
			z := log[loopStart]
			rem := dif
			if (k-loopStart)%dif == 0 {
				z += loopSum * (((k - loopStart) / dif) - 1)
			} else {
				z += loopSum * ((k - loopStart) / dif)
				rem = (k - loopStart) % dif
			}
			for j := 0; j <= rem; j++ {
				ans = larger(ans, z+log[loopStart+j]-log[loopStart])
			}
		}
	}
	fmt.Println(ans)
}
