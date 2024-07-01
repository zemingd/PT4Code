package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func intOfString(s string) int {
	x, _ := strconv.Atoi(s)
	return x
}

func main() {
	sc := bufio.NewScanner(os.Stdin)
	sc.Scan()
	n := intOfString(sc.Text())
	a := make([]int, 0, n)
	for sc.Scan() {
		a = append(a, intOfString(sc.Text()))
	}

	v := a[0]
	c := 0
	for i := 0; i < n; i++ {
		if v == 2 {
			fmt.Println(c + 1)
			os.Exit(0)
		}
		v = a[v-1]
		c++
	}

	fmt.Println(-1)
}