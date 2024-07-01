package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {

	sc.Split(bufio.ScanWords)

	var A, B, M int
	A = nextInt()
	// fmt.Scan(&A, &B, &M)
	// alist := make([]int, A)
	// blist := make([]int, B)
	alist := make([]int, A)
	B = nextInt()
	blist := make([]int, B)
	M = nextInt()

	minA := 0
	minB := 0

	var n int

	for i := 0; i < A; i++ {
		// fmt.Scan(&n)
		n = nextInt()
		alist[i] = n
		if minA > n || minA == 0 {
			minA = n
		}
	}

	for i := 0; i < B; i++ {
		// fmt.Scan(&n)
		n = nextInt()
		blist[i] = n
		if minB > n || minB == 0 {
			minB = n
		}
	}

	res := minA + minB
	var x, y, z int
	for i := 0; i < M; i++ {
		// fmt.Scan(&x, &y, &z)
		x = nextInt()
		y = nextInt()
		z = nextInt()

		if res > alist[x-1]+blist[y-1]-z {
			res = alist[x-1] + blist[y-1] - z
		}
	}

	fmt.Println(res)
}

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}
