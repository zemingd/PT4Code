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
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func nextLine() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	sc.Split(bufio.ScanWords)

	n := nextInt()
	m := map[int]int{}

	for i := 0; i < n; i++ {
		m[nextInt()]++
	}

	// fmt.Println(m)

	answer := 0
	for _, v := range m {
		if v%2 == 1 {
			answer++
		}
	}

	fmt.Println(answer)
}
