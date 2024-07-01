// by https://atcoder.jp/contests/abc070/tasks/abc070_c
package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
	var head = nextLine()
	var N, _ = strconv.Atoi(head)

	var A []int

	for i := 1; i <= N; i++ {
		var a = nextLine()
		var aa, _ = strconv.Atoi(a)
		A = append(A, aa)
	}
	x3 := MaxIntSlice(A)
	fmt.Println("maxplace:" + strconv.Itoa(x3))

	x1 := maxInt(A)
	fmt.Println("max:" + strconv.Itoa(x1))

	x2 := secondmaxInt(A)
	fmt.Println("second:" + strconv.Itoa(x2))

	if x1 == x2 {
		for i := 0; i < N; i++ {
			fmt.Println(x1)
		}
	} else {
		for i := 0; i < x3; i++ {
			fmt.Println(x1)
		}
		fmt.Println(x2)
		for i := 0; i < N-x3-1; i++ {
			fmt.Println(x1)
		}
	}
}

func delete(s []int, i int) []int {
	x := append(s[:i], s[i+1:]...)
	return x
}

func maxInt(a []int) int {
	sort.Sort(sort.IntSlice(a))
	return a[len(a)-1]
}

func secondmaxInt(a []int) int {
	sort.Sort(sort.IntSlice(a))
	return a[len(a)-2]
}

func nextLine() string {
	sc.Scan()
	return sc.Text()
}

// MinIntSlice is
func MaxIntSlice(v []int) (y int) {
	var m int
	// var y int
	if len(v) > 0 {
		m = v[0]
	}

	for i := 0; i < len(v); i++ {
		if v[i] > m {
			m = v[i]
			y = i
			// fmt.Println("y:" + strconv.Itoa(y))
			// fmt.Println("v[i]:" + strconv.Itoa(v[i]))
		}
	}
	// fmt.Println("m:" + strconv.Itoa(m))

	return
}
