package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextInt() int {
	sc.Scan()
	i, err := strconv.Atoi(sc.Text())
	if err != nil {
		panic(err)
	}
	return i
}

type discount struct {
	a     int
	b     int
	price int
}

func main() {
	sc.Split(bufio.ScanWords)
	A, B, M := nextInt(), nextInt(), nextInt()

	a := make([]int, A)
	for i := 0; i < A; i++ {
		a[i] = nextInt()
	}

	b := make([]int, B)
	for i := 0; i < B; i++ {
		b[i] = nextInt()
	}

	m := make([]discount, M)
	for i := 0; i < M; i++ {
		m[i] = discount{nextInt(), nextInt(), nextInt()}
	}

	min_a := getMin(a)
	min_b := getMin(b)

	min := min_a + min_b
	for _, d := range m {
		price := a[d.a-1] + b[d.b-1] - d.price
		if price < min {
			min = price
		}
	}
	fmt.Println(min)
}

func getMin(x []int) int {
	min := 100000
	for _, v := range x {
		if v < min {
			min = v
		}
	}
	return min
}
