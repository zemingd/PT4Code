package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
	sc.Split(bufio.ScanWords)
	n, m := nextInt(), nextInt()
	h := make([]int, n+1)
	for i := 1; i <= n; i++ {
		h[i] = nextInt()
	}
	p := make([][]int, n+1)
	for i := 0; i < m; i++ {
		a, b := nextInt(), nextInt()
		p[a] = append(p[a], b)
	}

	result := 0
	//fmt.Println(p)
	for i := 1; i < len(p); i++ {
		ret := p[i]
		if len(ret) == 0 {
			result++
			continue
		}
		for _, j := range ret {
			if h[i] < j {
				continue
			}
			result++
		}
	}

	fmt.Println(result - 1)
}

func nextInt() int {
	sc.Scan()
	num, _ := strconv.Atoi(sc.Text())
	return num
}
