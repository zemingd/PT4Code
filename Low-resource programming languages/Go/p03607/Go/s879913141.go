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
	for i := 0; i < n; i++ {
		a := nextInt()
		if _, exists := m[a]; exists {
			m[a] = false
		} else {
			m[a] = true
		}
	}

	c := 0
	for _, val := range m {
		if val {
			c++
		}
	}

	fmt.Println(c)
}
