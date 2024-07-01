package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc *bufio.Scanner = func() *bufio.Scanner {
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	return sc
}()

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func nextInts(n int) []int {
	ints := make([]int, n)
	for i := 0; i < n; i++ {
		ints[i] = nextInt()
	}
	return ints
}

func isDistinct(ints []int) bool {
	set := map[int]bool{}
	for _, v := range ints {
		if _, exist := set[v]; exist {
			return false
		}
		set[v] = true
	}
	return true
}

func main() {
	ints := nextInts(nextInt())
	id := isDistinct(ints)
	if id {
		fmt.Println("YES")
	} else {
		fmt.Println("NO")
	}
}
