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

func canBuildNoDecreasingStairs(stairs []int) bool {
	max := stairs[0]
	for i := 1; i < len(stairs); i++ {
		if max <= stairs[i] {
			max = stairs[i]
			continue
		}

		if max-stairs[i] > 1 {
			return false
		}
	}
	return true
}

func main() {
	n := nextInt()
	ints := nextInts(n)
	if canBuildNoDecreasingStairs(ints) {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
