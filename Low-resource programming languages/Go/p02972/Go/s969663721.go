package main

import (
	"bufio"
	"fmt"
	"os"
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
	A := make([]int, N+1)
	for i := 1; i <= N; i++ {
		A[i] = scanInt()
	}

	ans := make([]int, N+1)
	for i := N; i > 0; i-- {
		sum := 0
		for j := i; j <= N; j += i {
			sum += ans[j]
		}
		if sum%2 != A[i] {
			ans[i] = 1
		}
	}

	M := 0
	for _, a := range ans {
		M += a
	}
	fmt.Println(M)

	for i, a := range ans {
		if a == 1 {
			fmt.Printf("%d ", i+1)
		}
	}

}
