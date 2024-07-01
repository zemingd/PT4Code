package main

import (
	"bufio"
	"fmt"
  	"os"
  	"strconv"
)

var sc = bufio.NewScanner((os.Stdin))

func nextLine() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	l := nextLine()
	i, e := strconv.Atoi(l)
	if e != nil {
		panic(e)
	}
	return i
}

func main() {
	sc.Split(bufio.ScanWords)
	N, a := nextInt(), []int{}

	for i := 0; i < N; i++ {
		a = append(a, nextInt())
	}

	fmt.Printf("%d\n", ABC065B(a))
}

// ABC065B ...
func ABC065B(a []int) int {
	res, curr, done := 0, 1, map[int]bool{1: true}
	for {
		curr = a[curr-1]
		res++

		if curr == 2 {
			return res
		}

		_, contains := done[curr]
		if contains {
			return -1
		}

		done[curr] = true
	}
}
