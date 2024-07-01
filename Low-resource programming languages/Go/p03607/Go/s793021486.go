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
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func pow(a, b int) int {
	ans := 1
	for i := b; i > 0; i-- {
		ans *= a
	}
	return ans
}

func main() {
	sc.Split(bufio.ScanWords)

	n := nextInt()
	m := make(map[int]bool)
	c := 0
	for i := 0; i < n; i++ {
		a := nextInt()
		if m[a] {
			m[a] = false
			c--
		} else {
			m[a] = true
			c++
		}
	}

	fmt.Println(c)
}
