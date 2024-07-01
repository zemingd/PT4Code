package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

var (
	rdr   = bufio.NewReaderSize(os.Stdin, 1000000)
	reply string
)

func main() {
	var n, count int
	fmt.Scan(&n)
	x, l := scanSlice2(n)
	for i := 0; i < n-1; i++ {
		for j := i + 1; count < n && j < n && x[i]+l[i]-1 > x[j]-l[j]+1; j++ {
			count++
		}
	}
	if count < n {
		fmt.Println(n - count)
	} else {
		fmt.Println(1)
	}
}

func solve(buf []string) {
	h, _ := strconv.Atoi(buf[0])
	w, _ := strconv.Atoi(buf[1])
	n, _ := strconv.Atoi(buf[2])
	var sum, count int

	if h < w {
		h = w
	}
	for ; sum < n; count++ {
		sum += h
	}
	reply = strconv.Itoa(sum)
	fmt.Println(reply)
}

func hoge(a int, s string) int {
	sum := a
	for i := 1; i < len(s); i++ {
		n, _ := strconv.Atoi(s[:i])
		sum += hoge(a+n, s[i:])
	}
	ab, _ := strconv.Atoi(s)
	return ab + sum
}

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

func nextSlice() []string {
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

func min(a ...int) int {
	min := a[0]
	for i := 1; i < len(a); i++ {
		if min > a[i] {
			min = a[i]
		}
	}
	return min
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

func sum(a []int) (ans int) {
	for i := range a {
		ans += a[i]
	}
	return
}

// ---------------------------------------------------

func yesOrNo(b bool) {
	if b {
		reply = "Yes"
		fmt.Println(reply)
		return
	}
	reply = "No"
	fmt.Println(reply)
}

func yesorNO(b bool) {
	if b {
		reply = "Yes"
		fmt.Println(reply)
		return
	}
	reply = "No"
	fmt.Println(reply)
}