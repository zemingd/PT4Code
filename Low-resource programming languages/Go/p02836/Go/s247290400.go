package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
	s := nextLine()
	l, r, ans := 0, len(s)-1, 0
	for l < r {
		if s[l] != s[r] {
			ans++
		}
		l++
		r--
	}
	fmt.Println(ans)
}

func nscan(n int, val ...interface{}) {
	for _, ptr := range val {
		fmt.Scan(ptr)
	}
}

func nextLine() string {
	sc.Scan()
	return sc.Text()
}

func nextSlice() []string {
	sc.Scan()
	return strings.Split(sc.Text(), " ")
}

func atoi(a []string) (b []int) {
	for i := range a {
		b[i], _ = strconv.Atoi(a[i])
	}
	return
}

func atof(a []string) (b []float64) {
	for i := range a {
		b[i], _ = strconv.ParseFloat(a[i], 64)
	}
	return
}

func scanSlice2(n int) (a []int, b []int) {
	for i := 0; i < n; i++ {
		nscan(2, &a[i], &b[i])
	}
	return
}

func scanFloatSlice2(n int) (a []float64, b []float64) {
	for i := 0; i < n; i++ {
		nscan(2, &a[i], &b[i])
	}
	return
}

// ---------------------------------------------------

func abs(a int) int {
	if a > 0 {
		return a
	}
	return -a
}

func gcd(a, b int) int {
	if b == 0 {
		return a
	}
	return gcd(b, a%b)
}

func larger(a, b int) int {
	if a > b {
		return a
	}
	return b
}

func largest(a, b, c int) (lgst int) {
	if a > b {
		lgst = a
	} else {
		lgst = b
	}
	if c > lgst {
		lgst = c
	}
	return
}

func smaller(a, b int) int {
	if a < b {
		return a
	}
	return b
}

func smallest(a, b, c int) (slst int) {
	if a < b {
		slst = a
	} else {
		slst = b
	}
	if c < slst {
		slst = c
	}
	return
}

func sum(a []int) (ans int) {
	for i := range a {
		ans += a[i]
	}
	return
}

// ---------------------------------------------------

func yesOrNo(b bool) string {
	if b {
		return "Yes"
	}
	return "No"
}

func yesorNO(b bool) string {
	if b {
		return "YES"
	}
	return "NO"
}