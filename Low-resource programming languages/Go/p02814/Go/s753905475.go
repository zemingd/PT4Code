package main

import (
	"fmt"
)

func main() {
	var n, m int64
	fmt.Scanf("%d %d", &n, &m)
	as := scanInts(n)
	bs := make([]int64, n)
	for i, a := range as {
		bs[i] = a / 2
	}
	l := slice_lcm(bs)
	for _, b := range bs {
		if l/b%2 != 1 {
			l = m + 1
		}
	}
	if l > m {
		fmt.Println(0)
	} else {
		muls := m / l
		fmt.Println((muls + 1) / 2)
	}
}

func scanInts(length int64) []int64 {
	ints := make([]int64, length)
	for i := range iter(0, length) {
		var x int64
		_, _ = fmt.Scan(&x)
		ints[i] = x
	}
	return ints
}

func iter(l int64, r int64) chan int64 {
	var i int64 = l
	c := make(chan int64)
	run := func() {
		for i < r {
			c <- i
			i += 1
		}
		close(c)
	}
	go run()
	return c
}

func gcd(a int64, b int64) int64 {
	x, y := a, b
	for true {
		if x%y == 0 {
			break
		}
		x, y = y, x%y
	}
	return y
}

func slice_gcd(ints []int64) int64 {
	if len(ints) == 0 {
		return 1
	}
	ans := ints[0]
	for i := range iter(1, int64(len(ints))) {
		ans = gcd(ans, ints[i])
	}
	return ans
}

func lcm(a int64, b int64) int64 {
	g := gcd(a, b)
	return a * b / g
}

func slice_lcm(ints []int64) int64 {
	if len(ints) == 0 {
		return 1
	}
	ans := ints[0]
	for i := range iter(1, int64(len(ints))) {
		ans = lcm(ans, ints[i])
	}
	return ans
}
