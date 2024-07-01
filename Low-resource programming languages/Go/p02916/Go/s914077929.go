package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc *bufio.Scanner

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func main() {
	sc = bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	n := nextInt()

	aArray, bArray, cArray := make([]int, n), make([]int, n), make([]int, n-1)
	for i := range aArray {
		aArray[i] = nextInt() - 1
	}
	for i := range bArray {
		bArray[i] = nextInt()
	}
	for i := range cArray {
		cArray[i] = nextInt()
	}

	ans := 0
	for i, a := range aArray {
		ans += bArray[a]
		if i > 0 {
			if a-1 == aArray[i-1] {
				ans += cArray[a-1]
			}
		}
	}

	fmt.Println(ans)
}
