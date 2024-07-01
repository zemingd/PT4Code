package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func readInt() int {
	sc.Scan()
	i, err := strconv.Atoi(sc.Text())
	if err != nil {
		panic(err)
	}
	return i
}

func main() {
	sc.Split(bufio.ScanWords)

	n := readInt()
	p := make([]int, n)
	for i := 0; i < n; i++ {
		p[i] = readInt()
	}

	min := p[0]
	count := 0
	for _, v := range p {
		if v <= min {
			min = v
			count++
		}
	}
	fmt.Println(count)
}
