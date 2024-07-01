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

func main() {
	sc.Split(bufio.ScanWords)

	n, m := nextInt(), nextInt()
	fm := make(map[int]int, m)

	for i := 0; i < n; i++ {
		k := nextInt()
		for j := 0; j < k; j++ {
			fm[nextInt()-1]++
		}
	}

	c := 0
	for i := 0; i < m; i++ {
		if fm[i] == n {
			c++
		}
	}

	fmt.Println(c)
}
