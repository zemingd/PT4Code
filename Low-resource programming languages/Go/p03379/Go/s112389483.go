package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func scanInt() int {
	sc.Scan()
	i, err := strconv.Atoi(sc.Text())
	if err != nil {
		panic(err)
	}
	return i
}

func main() {
	sc.Split(bufio.ScanWords)

	N := scanInt()
	X, Y := make([]int, N), make([]int, N)
	for i := 0; i < N; i++ {
		X[i] = scanInt()
		Y[i] = X[i]
	}
	sort.Ints(Y)

	for _, x := range X {
		if x >= Y[N/2] {
			fmt.Println(Y[N/2-1])
		} else {
			fmt.Println(Y[N/2])
		}
	}
}
