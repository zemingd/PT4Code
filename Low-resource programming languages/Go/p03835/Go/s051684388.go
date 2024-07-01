package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func next() int {
	sc.Scan()
	val, err := strconv.Atoi(sc.Text())
	if err != nil {
		fmt.Println(err)
		os.Exit(1)
	}
	return val
}

func main() {
	sc.Split(bufio.ScanWords)

	K, S := next(), next()

	count := 0
	for i := 0; i < K+1; i++ {
		for j := 0; j < K+1; j++ {
			z := S - i - j
			if z >= 0 && z <= K {
				count++
			}
		}
	}
	fmt.Println(count)
}