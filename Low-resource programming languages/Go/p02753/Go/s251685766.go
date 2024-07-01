package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
	"strings"
)

func main() {
	s := reads()
	yesOrNo(!(s == "AAA" || s == "BBB"))
}

// IO---------------------------------------------------

func readi() (n int) {
	fmt.Scan(&n)
	return
}

func readf() (n float64) {
	fmt.Scan(&n)
	return
}

func reads() (n string) {
	fmt.Scan(&n)
	return
}

var rdr = bufio.NewReaderSize(os.Stdin, 1000000)

func readLine() string {
	buf := make([]byte, 0, 1000000)
	for {
		l, p, e := rdr.ReadLine()
		if e != nil {
			panic(e)
		}
		buf = append(buf, l...)
		if !p {
			break
		}
	}
	return string(buf)
}

func readSlice() []string {
	return strings.Split(readLine(), " ")
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

func readSlice2(n int) (a []int, b []int) {
	a = make([]int, n)
	b = make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&a[i], &b[i])
	}
	return
}

func readFloatSlice2(n int) (a []float64, b []float64) {
	a = make([]float64, n)
	b = make([]float64, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&a[i], &b[i])
	}
	return
}

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

func yesorno(b bool) {
	if b {
		fmt.Println("yes")
		return
	}
	fmt.Println("no")
}

// calc---------------------------------------------------

func abs(a int) int {
	if a > 0 {
		return a
	}
	return -a
}

func ave(a []int) (ave int) {
	for i := 0; i < len(a); i++ {
		ave += a[i]
	}
	ave /= len(a)
	return
}

func eq(a []string, b []string) bool {
	for i := 0; i < len(a); i++ {
		if a[i] != b[i] {
			return false
		}
	}
	return true
}

func gcd(a, b int) int {
	if b == 0 {
		return a
	}
	return gcd(b, a%b)
}

func max(a ...int) int {
	max := a[0]
	for i := 1; i < len(a); i++ {
		if max < a[i] {
			max = a[i]
		}
	}
	return max
}

func min(a ...int) int {
	min := a[0]
	for i := 1; i < len(a); i++ {
		if min > a[i] {
			min = a[i]
		}
	}
	return min
}

func mid(a []int) int {
	sort.Ints(a)
	return a[len(a)/2]
}

func sum(a []int) (ans int) {
	for i := range a {
		ans += a[i]
	}
	return
}