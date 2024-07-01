package main

import (
	"bufio"
	"os"
	"strconv"
	"fmt"
	"sort"
)

func main() {
	sc.Split(bufio.ScanWords)
	N, H := nextInt(), nextInt()
	a := make([]int, N)
	b := make([]int, N)
	maxA := 0
	for i := 0; i < N; i++ {
		a[i] = nextInt()
		b[i] = nextInt()
		if a[i] > maxA {
			 maxA = a[i]
		}
	}
	sort.Ints(b)

	res := 0
	for i := len(b) - 1; i >= 0 && H > 0; i-- {
		if maxA > b[i] {
			break
		} else {
			res++
			H -= b[i]
		}
	}

	if H > 0 {
		res += (H + maxA - 1) / maxA
	}
	fmt.Println(res)
}


// -------- Library --------
var sc = bufio.NewScanner(os.Stdin)

func next() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	v, err := strconv.Atoi(next())
	if err != nil {
		fmt.Println("Failed to read int", err)
		os.Exit(1)
	}
	return v
}

func nextIntArray(size int) []int {
	res := make([]int, size)
	for i := 0; i < size; i++ {
		res[i] = nextInt()
	}
	return res
}