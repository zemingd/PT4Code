package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func scanNums(len int) (nums []int) {
	for i := 0; i < len; i++ {
		nums = append(nums, nextInt())
	}
	return
}

func main() {
	sc.Split(bufio.ScanWords)
	N := nextInt()
	satisfactionLevel := 0

	A := scanNums(N)
	B := scanNums(N)
	C := scanNums(N - 1)

	for i := 1; i <= N; i++ {
		satisfactionLevel += B[A[i-1]-1]

		if i != 1 {
			if A[i-2] == A[i-1]-1 {
				satisfactionLevel += C[A[i-2]-1]
			}
		}

	}

	fmt.Println(satisfactionLevel)
}
