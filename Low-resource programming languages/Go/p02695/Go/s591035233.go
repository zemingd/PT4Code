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
	var N, M, Q, i int
	var SUM int
	N = nextInt()
	M = nextInt()
	Q = nextInt()

	a := make([]int, Q)
	b := make([]int, Q)
	c := make([]int, Q)
	d := make([]int, Q)
	for i = 0; i < Q; i++ {
		a[i] = nextInt()
		b[i] = nextInt()
		c[i] = nextInt()
		d[i] = nextInt()
	}
	init_arr := make([]int, M)
	for i = 0; i < M; i++ {
		init_arr[i] = i + 1
	}
	all_list := r_cmb(init_arr, N)
	fmt.Println(all_list)
	ANS := 0
	for _, A := range all_list {
		SUM = 0
		for i := 0; i < Q; i++ {
			if A[b[i]-1]-A[a[i]-1] == c[i] {
				SUM += d[i]
			}
		}
		if ANS < SUM {
			ANS = SUM
		}
	}
	fmt.Println(ANS)
}

func nextInt() int {
	stdin.Scan()
	i, err := strconv.Atoi(stdin.Text())
	if err != nil {
		panic(err)
	}
	return i
}

func nextInt64() uint64 {
	stdin.Scan()
	i, err := strconv.ParseUint(stdin.Text(), 10, 64)
	if err != nil {
		panic(err)
	}
	return i
}

func nextStr() string {
	stdin.Scan()
	i := stdin.Text()
	return i
}

func r_cmb(array []int, n int) (result [][]int) {
	if n <= 0 {
		return
	}
	if n == 1 {
		for _, a := range array {
			result = append(result, []int{a})
		}
	} else if len(array) == n {
		result = append(result, array)
	} else {
		for _, a := range r_cmb(array, n-1) {
			result = append(result, append([]int{array[0]}, a...))
		}
		result = append(result, r_cmb(array[1:], n)...)
	}
	return
}
