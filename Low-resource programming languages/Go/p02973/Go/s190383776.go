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
	A := make([]int, N)
	for i := 0; i < N; i++ {
		A[i] = scanInt()
	}

	minList := make([]int, 1)
	minList[0] = A[0]
	for i := 1; i < N; i++ {
		useNewColor := true
		for j := len(minList) - 1; j >= 0; j-- {
			if A[i] > minList[j] {
				minList[j] = A[i]
				sort.Ints(minList)
				useNewColor = false
				break
			}
		}

		if useNewColor {
			minList = append([]int{A[i]}, minList...)
		}
	}
	fmt.Println(len(minList))
}
