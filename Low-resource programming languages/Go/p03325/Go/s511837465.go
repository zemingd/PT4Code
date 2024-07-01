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
	A := make([]int, N)
	for i := 0; i < N; i++ {
		A[i] = scanInt()
	}

	ans := 0
	for i := 0; i < N; i++ {
		for {
			if A[i]%2 == 0 {
				A[i] /= 2
				ans++
			} else {
				break
			}
		}
	}
	fmt.Println(ans)
}
