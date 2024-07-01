package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextStr() string {
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

func Max(a, b int) int {
	if a > b {
		return a
	} else {
		return b
	}
}

func Min(a, b int) int {
	if a > b {
		return b
	} else {
		return a
	}
}

func absInt(a int) int {
	if a >= 0 {
		return a
	} else {
		return -a
	}
}

func main() {
	sc.Split(bufio.ScanWords)
	N := nextInt()
	A := make([]int, N)
	var min int

	for i := 0; i < N; i++ {
		A[i] = nextInt()
		min = Min(min, A[i])
	}

	ans := 0
	for i := 0; i < N-1; i++ {
		for j := i + A[i] + min + 1; j < N; j++ {
			if absInt(i-j) == absInt(A[i]+A[j]) {
				//fmt.Println(i, j)
				ans++
			}
		}
	}

	fmt.Println(ans)

}
