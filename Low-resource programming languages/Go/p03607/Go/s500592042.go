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
	i, _ := strconv.Atoi(sc.Text())
	return i
}

func inputIntSlice(size int) []int {
	slice := make([]int, size)
	for i := range slice {
		slice[i] = nextInt()
	}
	return slice
}

var written [1000000000]bool

func main() {
	sc.Split(bufio.ScanWords)
	n := nextInt()
	max := 0
	for i := 0; i < n; i++ {
		a := nextInt() - 1
		if a > max {
			max = a
		}
		written[a] = !written[a]
	}

	ans := 0
	for i := 0; i <= max; i++ {
		if written[i] {
			ans++
		}
	}
	fmt.Println(ans)
}
