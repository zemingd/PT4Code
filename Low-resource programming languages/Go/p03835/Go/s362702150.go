package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner((os.Stdin))

func nextLine() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	l := nextLine()
	i, e := strconv.Atoi(l)
	if e != nil {
		panic(e)
	}
	return i
}

func main() {
	sc.Split(bufio.ScanWords)
	K, S := nextInt(), nextInt()

	fmt.Printf("%d\n", ABC051B(K, S))
}

// ABC051B ...
func ABC051B(K, S int) (res int) {
	for x := 0; x <= K; x++ {
		for y := 0; y <= K; y++ {
			z := S - x - y
			if 0 <= z && z <= K {
				res++
			}
		}
	}

	return
}
