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
	num, err := strconv.Atoi(sc.Text())
	if err != nil {
		panic(err)
	}
	return num
}

func nextString() string {
	sc.Scan()
	return sc.Text()
}

func isTarget(i, j, dx int) int {
	if dx == i+j {
		return 1
	}
	return 0
}

func main() {
	sc.Split(bufio.ScanWords)

	n := nextInt()
	party := make([]int, n)
	for i := 0; i < n; i++ {
		party[i] = nextInt()
	}

	count := 0
	for i := 0; i < n-1; i++ {
		for j := i + party[i]; j < n; j++ {
			count += isTarget(party[i], party[j], j-i)
		}
	}

	fmt.Println(count)
}
