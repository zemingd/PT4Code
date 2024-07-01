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
	// Code for C - Many Medians
	var N int
	fmt.Scanf("%d", &N)

	sc.Split(bufio.ScanWords)
	X := make([]int, N)
	Y := make([]int, N)
	for i := 0; i < N; i++ {
		X[i] = nextInt()
		Y[i] = X[i]
	}

	sort.Sort(sort.IntSlice(Y))
	ans := make(map[int]int, N)
	for i := 0; i < N; i++ {
		if i < N/2 {
			//fmt.Println(X[N/2])
			ans[Y[i]] = Y[N/2]
		} else {
			//fmt.Println(X[(N/2)-1])
			ans[Y[i]] = Y[(N/2)-1]
		}
	}

	for i := 0; i < N; i++ {
		fmt.Println(ans[X[i]])
	}

}
