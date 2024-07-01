package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

var sc = func() *bufio.Scanner {
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	return sc
}()

func getInt() (n int) {
	sc.Scan()
	n, _ = strconv.Atoi(sc.Text())
	return n
}

func getString() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	N := getInt()
	a := make([]int, N)
	x := make([]int, N)
	y := make([]int, N)
	for i := 0; i < N; i++ {
		a[i] = i
		x[i] = getInt()
		y[i] = getInt()
	}

	A := getMatrix(a)
	B := 0.0
	for _, v := range A {
		for j := 0; j < len(v)-1; j++ {
			B += math.Sqrt(float64((x[v[j]]-x[v[j+1]])*(x[v[j]]-x[v[j+1]]) +
				(y[v[j]]-y[v[j+1]])*(y[v[j]]-y[v[j+1]])))
		}
	}

	fmt.Println(B / float64(len(A)))
}

func getMatrix(a []int) [][]int {
	c := make([][]int, 0, kaijou(len(a)))
	if len(a) == 1 {
		c = append(c, a)
	} else {
		for _, v1 := range a {
			b := make([]int, 0, len(a)-1)
			for _, v2 := range a {
				if v1 == v2 {
					continue
				}
				b = append(b, v2)
			}
			d := getMatrix(b)
			for _, v3 := range d {
				c = append(c, append(v3, v1))
			}
		}
	}
	return c
}

func kaijou(a int) (b int) {
	for i := 1; i <= a; i++ {
		b *= i
	}
	return
}
