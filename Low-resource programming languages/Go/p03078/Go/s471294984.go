package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
	"strings"
)

var sc = bufio.NewScanner(os.Stdin)

func nextLine() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	XYZK := strings.Split(nextLine(), " ")
	X, _ := strconv.Atoi(XYZK[0])
	Y, _ := strconv.Atoi(XYZK[1])
	Z, _ := strconv.Atoi(XYZK[2])
	K, _ := strconv.Atoi(XYZK[3])

	a := strings.Split(nextLine(), " ")
	b := strings.Split(nextLine(), " ")
	c := strings.Split(nextLine(), " ")
	A := make([]int, X)
	B := make([]int, Y)
	C := make([]int, Z)

	for i := 0; i < X; i++ {
		A[i], _ = strconv.Atoi(a[i])
	}
	for i := 0; i < Y; i++ {
		B[i], _ = strconv.Atoi(b[i])
	}
	for i := 0; i < Z; i++ {
		C[i], _ = strconv.Atoi(c[i])
	}

	AB := make([]int, X*Y)
	for i, a := range A {
		for j, b := range B {
			AB[j+Y*i] = a + b
		}
	}
	sort.Sort(sort.Reverse(sort.IntSlice(AB)))
	AB = AB[:K]
	ans := make([]int, K*Z)
	for i, ab := range AB {
		for j, c := range C {
			ans[j+Z*i] = ab + c
		}
	}
	sort.Sort(sort.Reverse(sort.IntSlice(ans)))
	for _, v := range ans[:K] {
		fmt.Println(v)
	}
}