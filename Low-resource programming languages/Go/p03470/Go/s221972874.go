package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func scanInt() int {
	sc.Scan()
	a, err := strconv.Atoi(sc.Text())
	if err != nil {
		fmt.Println(err)
	}
	return a
}

func main() {
	sc.Split(bufio.ScanWords)

	N := scanInt()
	m := make(map[int]int)

	for i := 0; i < N; i++ {
		d := scanInt()
		m[d]++
	}
	fmt.Println(len(m))
}
