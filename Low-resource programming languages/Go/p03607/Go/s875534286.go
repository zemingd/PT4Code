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
	// Code for C - Write and Erase
	var N int
	fmt.Scanf("%d", &N)

	A := make(map[int]int, N)
	var temp int
	for i := 0; i < N; i++ {
		temp = nextInt()
		if A[temp] == 0 {
			A[temp]++
		} else {
			A[temp]--
		}
	}

	var count int
	for _, v := range A {
		if v != 0 {
			count++
		}
	}

	fmt.Println(count)
}
