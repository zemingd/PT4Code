package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func main() {
	var n, p int
	fmt.Scan(&n)

	sc.Split(bufio.ScanWords)
	ps := []int{}
	for i := 0; i < n; i++ {
		p = nextInt()
		ps = append(ps, p)
	}

	count := 0
	for i := 1; i < n-1; i++ {
		if (ps[i] > ps[i-1] && ps[i] < ps[i+1]) || (ps[i] < ps[i-1] && ps[i] > ps[i+1]) {
			count++
		}
	}

	fmt.Println(count)
}
