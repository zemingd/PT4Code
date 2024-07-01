package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func next() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func main() {
	sc.Split(bufio.ScanWords)

	x := nextInt()

	fmt.Println(nextPrime(x))
}

func nextPrime(num int) int {
	const limit = 200000
	m := make(map[int]bool)

	for i := 2; i <= limit; i++ {
		m[i] = true
	}

	for i := 2; i <= int(math.Ceil(math.Sqrt(limit))); i++ {
		if m[i] {
			for j := i*2; j<= limit; j+=i {
				m[j] = false
			}
		}
	}

	for i := num; i <= limit; i++ {
		if m[i] {
			return i
		}
	}

	return -1
}