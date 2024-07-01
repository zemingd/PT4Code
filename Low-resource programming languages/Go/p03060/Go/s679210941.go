package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func next() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func main() {
	sc.Split(bufio.ScanWords)

	N := nextInt()
	var V, C []int
	for i := 0; i < N; i++ {
		V = append(V, nextInt())
	}
	for i := 0; i < N; i++ {
		C = append(C, nextInt())
	}

	res := 0
	for i := 0; i < N; i++ {
		if C[i] < V[i] {
			res += V[i] - C[i]
		}
	}
	fmt.Println(res)
}
