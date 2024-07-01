package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	n := 0
	k := int64(0)
	fmt.Scan(&n, &k)
	a := make([]int, n)
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	for i := 0; i < n; i++ {
		sc.Scan()
		a[i], _ = strconv.Atoi(sc.Text())
		a[i]--
	}
	visited := make([]int, n)
	for i := range visited {
		visited[i] = -1
	}
	step := 0
	cycle := 0
	p := 0
	for i := 0; i <= n; i++ {
		if visited[p] != -1 {
			cycle = i
			break
		}
		visited[p] = i
		p = a[p]
	}
	step = visited[p]
	cycle -= step
	p = 0
	if k <= int64(step) {
		for i := int64(0); i < k; i++ {
			p = a[p]
		}
	} else {
		for i := 0; i < step; i++ {
			p = a[p]
		}
		k = (k - int64(step)) % int64(cycle)
		for i := int64(0); i < k; i++ {
			p = a[p]
		}
	}
	fmt.Println(p + 1)
}
