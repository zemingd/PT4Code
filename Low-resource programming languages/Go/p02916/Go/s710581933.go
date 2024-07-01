package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func init() {
	sc.Split(bufio.ScanWords)
}

func nextInt() int {
	sc.Scan()
	i, e := strconv.ParseInt(sc.Text(), 10, 64)
	if e != nil {
		panic(e)
	}
	return int(i)
}

func main() {
	n := nextInt()
	a := make([]int, 0, n)
	b := make(map[int]int, n)
	c := make(map[int]int, n-1)

	for index := 0; index < n; index++ {
		a = append(a, nextInt())
	}
	for index := 1; index < n+1; index++ {
		b[index] = nextInt()
	}
	for index := 1; index < n; index++ {
		c[index] = nextInt()
	}

	var re int
	first := a[0]
	re += b[first]
	a = a[1:]
	for _, item := range a {
		re += b[item]
		if item-first == 1 {
			re += c[first]
		}
		first = item
	}

	fmt.Println(re)
}
