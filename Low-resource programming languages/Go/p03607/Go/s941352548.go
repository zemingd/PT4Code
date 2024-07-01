package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	sc.Split(bufio.ScanWords)
	n := nextInt()
	cnts := map[int]int{}
	for i := 0; i < n; i++ {
		x := nextInt()
		_, ok := cnts[x]
		if ok {
			cnts[x] += 1
		} else {
			cnts[x] = 1
		}
	}
	res := 0
	for _, v := range cnts {
		if v%2 == 0 {
			res++
		}
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
	v, _ := strconv.Atoi(next())
	return v
}

func nextIntArray(size int) []int {
	res := make([]int, size)
	for i := 0; i < size; i++ {
		res[i] = nextInt()
	}
	return res
}
