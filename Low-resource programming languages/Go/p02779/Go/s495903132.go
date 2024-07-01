package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var stdin = bufio.NewScanner(os.Stdin)

func main() {
	stdin.Split(bufio.ScanWords)
	var N int
	var A []int
	var B int

	N = nextInt()
	k := 0
	for i := 0; i < N-1; i++ {
		B = nextInt()
		for j := k; j< len(A); j++ {
			if B == A[j] {
				fmt.Println("NO")
				os.Exit(0)
			}
			k = j
		}
		A = append(A, nextInt())
	}
	fmt.Println("YES")
}

func nextInt() int {
	stdin.Scan()
	i, err := strconv.Atoi(stdin.Text())
	if err != nil {
		panic(err)
	}
	return i
}
