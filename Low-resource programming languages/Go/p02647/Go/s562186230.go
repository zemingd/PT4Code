package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
	var n, k int
	fmt.Scanf("%d %d", &n, &k)

	sc.Split(bufio.ScanWords)

	a := make([]int, n)
	a2 := make([]int, n)
	for i := 0; i < n; i++ {
		a[i] = nextInt()
	}

	for i := 0; i < k; i++ {
		lightLamp(a, a2)
		tmp := a
		a = a2
		a2 = tmp
	}

	for i, v := range a {
		if i != 0 {
			fmt.Printf(" %d", v)
		} else {
			fmt.Printf("%d", v)
		}
	}
	fmt.Printf("\n")
}

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func lightLamp(a, a2 []int) {
	l := len(a)

	for i := range a2 {
		a2[i] = 0
	}

	for i, v := range a {
		min := maxInt(0, i-v)
		max := minInt(l-1, i+v)
		for j := min; j <= max; j++ {
			a2[j]++
		}
	}
}

func maxInt(a, b int) int {
	if a < b {
		return b
	}
	return a
}

func minInt(a, b int) int {
	if a < b {
		return a
	}
	return b
}
