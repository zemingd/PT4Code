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
	for i := 0; i < n; i++ {
		a[i] = nextInt()
	}

	for i := 0; i < k; i++ {
		fmt.Println(a)
		a = lightLamp(a)
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

func lightLamp(a []int) []int {
	l := len(a)
	a2 := make([]int, l)

	for i, v := range a {
		min := maxInt(0, i-v)
		max := minInt(l-1, i+v)
		for j := min; j <= max; j++ {
			a2[j]++
		}
	}

	return a2
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
