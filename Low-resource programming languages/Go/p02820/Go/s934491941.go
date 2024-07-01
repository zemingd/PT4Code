package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func next() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	sc.Scan()
	i, _ := strconv.Atoi(sc.Text())
	return i
}

func nextFloat64() float64 {
	f, _ := strconv.ParseFloat(next(), 64)
	return f
}

func nextInts(n int) []int {
	slice := make([]int, n)
	for i := 0; i < n; i++ {
		slice[i] = nextInt()
	}
	return slice
}

func main() {
	sc.Split(bufio.ScanWords)
	n, k := nextInt(), nextInt()
	r, s, p := nextInt(), nextInt(), nextInt()
	t := next()

	ans := 0
	win := make([]bool, n)
	for i := 0; i < n; i++ {
		point := 0
		switch t[i] {
		case 'r':
			point = p
		case 's':
			point = r
		case 'p':
			point = s
		}
		if i >= k && t[i-k] == t[i] && win[i-k] {
			point = 0
			win[i] = false
		} else {
			win[i] = true
		}
		ans += point
	}
	fmt.Println(ans)
}
