package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

var sc = bufio.NewScanner(os.Stdin)

func main() {
	// Code for D - Triangles
	var N int
	fmt.Scan(&N)

	sc.Split(bufio.ScanWords)
	l := make([]int, N)
	for i := 0; i < N; i++ {
		l[i] = nextInt()
	}

	sort.Sort(sort.IntSlice(l))

	var count int
	for i := 0; i < N; i++ {
		for j := i + 1; j < N; j++ {
			for k := j + 1; k < N; k++ {
				if l[i] < l[j]+l[k] && l[j] < l[i]+l[k] && l[k] < l[i]+l[j] {
					count++
				}
			}
		}
	}

	fmt.Println(count)
}
