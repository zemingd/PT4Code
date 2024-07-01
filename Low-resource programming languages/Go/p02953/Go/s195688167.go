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
	var N int
	fmt.Scan(&N)
	H := atoi(nextSlice())
	for i := len(H) - 1; i > 0; i-- {
		if H[i-1] > H[i] {
			H[i-1]--
			if H[i-1] > H[i] {
				yesOrNo(false)
				return
			}
		}
	}
	yesOrNo(true)
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
	b = make([]int, len(a))
	for i := range a {
		b[i], _ = strconv.Atoi(a[i])
	}
	return
}

func atof(a []string) (b []float64) {
	b = make([]float64, len(a))
	for i := range a {
		b[i], _ = strconv.ParseFloat(a[i], 64)
	}
	return
}

func scanSlice2(n int) (a []int, b []int) {
	a = make([]int, n)
	b = make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&a[i], &b[i])
	}
	return
}

func scanFloatSlice2(n int) (a []float64, b []float64) {
	a = make([]float64, n)
	b = make([]float64, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&a[i], &b[i])
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

func yesOrNo(b bool) {
	if b {
		fmt.Println("Yes")
		return
	}
	fmt.Println("No")
}

func yesorNO(b bool) {
	if b {
		fmt.Println("YES")
		return
	}
	fmt.Println("NO")
}
