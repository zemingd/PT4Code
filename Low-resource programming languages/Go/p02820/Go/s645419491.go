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
	in := make([]string, 6)
	fmt.Scan(&in[0], &in[1], &in[2], &in[3], &in[4], &in[5])
	solve(in)
}

func solve(buf []string) {
	var (
		n, _ = strconv.Atoi(buf[0])
		k, _ = strconv.Atoi(buf[1])
		r, _ = strconv.Atoi(buf[2])
		s, _ = strconv.Atoi(buf[3])
		p, _ = strconv.Atoi(buf[4])
		t    = strings.Split(buf[5], "")

		ans int
		i   int
	)

	points := []int{r, s, p}

	for i = 0; i < k; i++ {
		ans += point(points, string(t[i]))
	}
	for ; i < n; i++ {
		if t[i] == t[i-k] {
			t[i] = ""
		}
		ans += point(points, string(t[i]))
	}
	reply = strconv.Itoa(ans)
	fmt.Println(reply)
}

func point(points []int, s string) (point int) {
	switch s {
	case "r":
		point = points[2]
	case "s":
		point = points[0]
	case "p":
		point = points[1]
	}
	return
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