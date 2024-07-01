package main

import (
	"bufio"
	"os"
	"strconv"
	"fmt"
)

var sc = bufio.NewScanner(os.Stdin)

func nextString() string {
	if !sc.Scan() {
		panic("failed scan string")
	}
	return sc.Text()
}

func nextInt() int {
	if !sc.Scan() {
		panic("failed scan int")
	}
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func main() {
	sc.Split(bufio.ScanWords)
	n := nextInt()
	k := nextInt()
	list := make([]int, n)
	for i := 0; i < n; i++ {
		list[i] = nextInt()
	}

	result := (n - 1) / (k - 1)
	if (n-1)%(k-1) != 0 {
		result++
	}
	fmt.Println(result)
}
