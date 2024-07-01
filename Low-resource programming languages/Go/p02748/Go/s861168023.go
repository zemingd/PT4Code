package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

var stdin = bufio.NewScanner(os.Stdin)

func main() {
	stdin.Split(bufio.ScanWords)
	var A, B, M int

	A = nextInt()
	B = nextInt()
	M = nextInt()

	a := make([]int, A)
	b := make([]int, B)
	x := make([]int, M)
	y := make([]int, M)
	c := make([]int, M)
	coup := make([]int, M)

	for i := 0; i < A; i++ {
		a[i] = nextInt()
	}
	for i := 0; i < B; i++ {
		b[i] = nextInt()
	}
	for i := 0; i < M; i++ {
		x[i] = nextInt()
		y[i] = nextInt()
		c[i] = nextInt()
		coup[i] = a[x[i]-1] + b[y[i]-1] - c[i]
	}

	sort.Ints(coup)
	sort.Ints(a)
	sort.Ints(b)
	// fmt.Println(coup)
	// fmt.Println(a)
	// fmt.Println(b)

	if a[0]+b[0] < coup[0] {
		fmt.Println(a[0] + b[0])
	} else {
		fmt.Println(coup[0])
	}
}

func nextInt() int {
	stdin.Scan()
	i, err := strconv.Atoi(stdin.Text())
	if err != nil {
		panic(err)
	}
	return i
}

func nextStr() string {
	stdin.Scan()
	i := stdin.Text()
	// if err != nil {
	// 	panic(err)
	// }
	return i
}
