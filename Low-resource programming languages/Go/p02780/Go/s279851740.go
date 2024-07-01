package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextString() string {
	if !sc.Scan() {
		panic("failed scan string")
	}
	return sc.Text()
}

func nextInt() int {
	if !sc.Scan() {
		panic("failed scan int")
	}
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func main() {
	sc.Split(bufio.ScanWords)
	n, k := nextInt(), nextInt()
	p := make([]int, n)
	ex := make([]float64, n)
	for i := 0; i < n; i++ {
		p[i] = nextInt()
		ex[i] = float64(1+p[i]) * float64(p[i]) / 2.0 / float64(p[i])
	}

	for i := 1; i < n; i++ {
		ex[i] += ex[i-1]
	}

	ans := 0.0

	for t := k - 1; t < n; t++ {
		f := t - k
		if f < 0 {
			f = 0
		}
		tmp := ex[t] - ex[f]
		if tmp > ans {
			ans = tmp
		}
	}

	fmt.Println(ans)
}
