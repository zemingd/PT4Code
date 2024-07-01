package main

import (
	"bufio"
	"os"
	"strconv"
	"fmt"
)

func main() {
	n := nextInt()
	a := nextIntArray(n)

	dic := make(map[int]bool)
	res := 0
	for i := 0; i < n; i++ {
		_, has := dic[a[i]]
		if !has {
			dic[a[i]] = true
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