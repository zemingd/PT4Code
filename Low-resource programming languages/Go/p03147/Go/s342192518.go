package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	sc.Scan()
	n, _ := strconv.Atoi(sc.Text())

	hl := make([]int, n+2)
	for i := 1; i < n+1; i++ {
		sc.Scan()
		h, _ := strconv.Atoi(sc.Text())
		hl[i] = h
	}

	ans := 0
	for i := maxi(hl); i > 0; i = maxi(hl) {
		l, r := rangeLR(hl, i)
		c := hl[i] - max(hl[l-1], hl[r+1])
		for j := l; j <= r; j++ {
			hl[j] -= c
		}
		ans += c
	}

	fmt.Println(ans)
}

func rangeLR(hl []int, i int) (int, int) {
	j := i - 1
	for hl[j] == hl[i] {
		j--
	}
	l := j + 1

	j = i + 1
	for hl[j] == hl[i] {
		j++
	}
	r := j - 1
	return l, r
}

func max(x, y int) int {
	if x > y {
		return x
	}
	return y
}

func maxi(l []int) int {
	max := 0
	j := 0
	for i, v := range l {
		if v > max {
			max = v
			j = i
		}
	}
	return j
}
