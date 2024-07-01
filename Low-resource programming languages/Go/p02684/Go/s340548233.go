package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

//Util
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

func maxInt(a, b int) int {
	if a > b {
		return a
	} else {
		return b
	}
}

func minInt(a, b int) int {
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

func contains(s []int, e int) int {
	for i, v := range s {
		if e == v {
			return i
		}
	}
	return -1
}

//Main
var sc = bufio.NewScanner(os.Stdin)

const MAX = 200000 + 1

func main() {
	sc.Split(bufio.ScanWords)
	N, K := nextInt(), nextInt()
	var A [MAX]int

	for i := 1; i <= N; i++ {
		A[i] = nextInt()
	}

	if A[1] == 1 {
		fmt.Println(A[1])
		return
	}

	var stack []int
	var indx int
	line := 0
	loop := 0

	next := A[1]
	colors := make([]int, N+1)
	colors[1] = 1
	stack = append(stack, 1)
	for i := 1; i <= N; i++ {
		indx = colors[next]
		if indx == 0 {
			stack = append(stack, next)
			colors[next] = i + 1
		} else {
			line = indx - 1
			loop = i - indx + 1
			break
		}
		next = A[next]
	}

	//TLE
	// stack = append(stack, 1)
	// for i := 1; i <= N; i++ {
	// 	indx = contains(stack, next)
	// 	if indx == -1 {
	// 		stack = append(stack, next)
	// 	} else {
	// 		line = indx
	// 		loop = i - indx
	// 		break
	// 	}
	// 	next = A[next]
	// }
	if K < line {
		fmt.Println(stack[K])
	} else {
		stack = stack[line:]
		fmt.Println(stack[(K-line)%(loop)])
	}

}
