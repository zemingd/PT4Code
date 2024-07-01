package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func scanInt() int {
	sc.Scan()
	i, _ := strconv.Atoi(sc.Text())
	return i
}

func main() {
	n := scanInt()

	p := make([]int, n)
	for i := range p {
		fmt.Scan(&p[i])
	}

	ans := 1
	min := p[0]
	for i := 1; i < n; i++ {
		if p[i] < min {
			ans++
			min = p[i]
		}
	}

	fmt.Println(ans)
}
