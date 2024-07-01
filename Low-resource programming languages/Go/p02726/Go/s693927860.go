package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextInt() int {
	var i int
	if sc.Scan() {
		if num, err := strconv.Atoi(sc.Text()); err == nil {
			i = num
		}
	}
	return i
}

func main() {
	sc.Split(bufio.ScanWords)
	n, x, y := nextInt(), nextInt(), nextInt()
	var loads = map[int]int{}
	var q = make([]int, 0)
	for i := 1; i <= n; i++ {
		q = append(q, i)
	}
	for len(q) != 0 {
		i := q[0]
		for jIndex := 1; jIndex < len(q); jIndex++ {
			j := q[jIndex]
			var load = j - i
			if i <= x && y <= j {
				load = (x - i) + 1 + (j - y)
			}
			loads[load]++
		}
		q = q[1:] // pop
	}
	for i := 1; i < n; i++ {
		fmt.Println(loads[i])
	}
}
