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
	sort.Ints(A)
	A = append(A, 0)

	ans := 0
	tmp := 1
	for i := 1; i <= N; i++ {
		if A[i] == A[i-1] {
			tmp++
		} else {
			if tmp%2 == 1 {
				ans++
			}
			tmp = 1
		}
	}

	fmt.Println(ans)
}
