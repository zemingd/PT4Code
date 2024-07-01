package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

var stdInScanner = bufio.NewScanner(os.Stdin)

func nextInt() int {
	stdInScanner.Scan()
	i, _ := strconv.Atoi(stdInScanner.Text())
	return i
}

func main() {
	stdInScanner.Split(bufio.ScanWords)

	N := nextInt()
	K := nextInt()

	A := make([]int, N)
	for i := 0; i < N; i++ {
		A[i] = nextInt()
	}

	products := make([]int, (N*(N-1))/2)
	counter := 0
	for i := 0; i < N-1; i++ {
		for j := i + 1; j < N; j++ {
			products[counter] = A[i] * A[j]
			counter++
		}
	}
	sort.Ints(products)
	fmt.Println(products[K-1])
}
