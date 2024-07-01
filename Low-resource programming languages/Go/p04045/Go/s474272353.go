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
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func main() {
	sc.Split(bufio.ScanWords)

	m := map[string]bool{}
	for i := 0; i <= 9; i++ {
		m[strconv.Itoa(i)] = false
	}

	N, K := nextInt(), nextInt()
	for i := 0; i < K; i++ {
		m[strconv.Itoa(nextInt())] = true
	}

	for i := N; i < 10000; i++ {
		s := strconv.Itoa(i)
		flag := true
		for _, ss := range s {
			if m[string(ss)] {
				flag = false
			}
		}

		if flag {
			fmt.Println(i)
			return
		}
	}

}

func LowerBound(t []int, k int) int {
	lb := -1
	ub := len(t)
	for ub-lb > 1 {
		mid := (lb + ub) / 2

		if t[mid] >= k {
			ub = mid
		} else {
			lb = mid
		}
	}
	return ub
}
