package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
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

func sumSlice(s []int) int {
	sum := 0
	for i := 0; i < len(s); i++ {
		sum += s[i]
	}
	return sum
}

func main() {
	sc.Split(bufio.ScanWords)

	N, M := nextInt(), nextInt()
	var A, D = make([]int, N), make([]int, N)
	for i := 0; i < N; i++ {
		A[i] = nextInt()
	}

	pos := 0
	for i := 0; i < M; i++ {
		b, c := nextInt(), nextInt()
		for j := 0; j < b; j++ {
			D[pos] = c
			pos++
		}
	}

	sort.Ints(A)
	sort.Sort(sort.Reverse(sort.IntSlice(D)))

	for i := 0; i < N && i < len(D); i++ {
		if A[i] >= D[i] {
			break
		}

		A[i] = D[i]
	}

	fmt.Println(sumSlice(A))
}
