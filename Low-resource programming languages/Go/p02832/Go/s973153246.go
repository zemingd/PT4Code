package main

import (
	"bufio"
	"fmt"
	"os"
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
	// Code for D - Brick Break
	var N int
	fmt.Scanf("%d", &N)

	sc.Split(bufio.ScanWords)
	a := make([]int, N)
	for i := 0; i < N; i++ {
		a[i] = nextInt()
	}

	var num int = 1
	for i := 0; i < N; i++ {
		if num == a[i] {
			num++
		}
	}
	if num == 1 {
		fmt.Println("-1")
	} else {
		fmt.Println(N - num + 1)
	}
}
