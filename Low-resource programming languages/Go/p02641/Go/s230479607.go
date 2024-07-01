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
	iv, _ := strconv.Atoi(sc.Text())
	return iv
}

func init() {
	sc.Split(bufio.ScanWords)
}

func abs(x int) int {
	if x < 0 {
		return -x
	}
	return x
}

func main() {
	x, n := scanInt(), scanInt()
	xm := make(map[int]bool)
	for i := 0; i < n; i++ {
		p := scanInt()
		xm[p] = true
	}

	if n == 0 {
		fmt.Println(x)
		return
	}

	d := 10000
	var ans int
	for i := -100; i <= 100; i++ {
		if xm[i] {
			continue
		}
		if abs(x-i) < d {
			d = abs(x - i)
			ans = i
		}
	}
	fmt.Println(ans)
}
