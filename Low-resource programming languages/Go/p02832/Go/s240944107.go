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

func breakBrick(bricks []int) (brokenCount int, isSuccess bool) {
	bi := 1
	for _, v := range bricks {
		if bi == v {
			bi++
			continue
		}
		brokenCount++
	}
	if len(bricks) != brokenCount {
		isSuccess = true
	}
	return
}

func main() {
	n := nextInt()
	ints := nextInts(n)
	bc, ok := breakBrick(ints)
	if ok {
		fmt.Println(bc)
	} else {
		fmt.Println(-1)
	}
}
