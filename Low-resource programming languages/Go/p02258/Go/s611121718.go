package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func nextInt(sc *bufio.Scanner) int {
	sc.Scan()
	n, err := strconv.Atoi(sc.Text())
	if err != nil {
		panic(err)
	}
	return n
}

func main() {
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	n := nextInt(sc)
	as := make([]int, n)
	for i := 0; i < n; i++ {
		as[i] = nextInt(sc)
	}
	exec(as, n)
}

func exec(as []int, n int) {
	diffMax := -1000000000
	min := as[0]
	for i := 1; i < n; i++ {
		a := as[i]
		diff := a - min
		if diff > diffMax {
			diffMax = diff
		}
		if min > a {
			min = a
		}
	}
	fmt.Println(diffMax)
}

