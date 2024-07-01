package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

const mod = 1000000007

// 1MB
const ioBufferSize = 1 * 1024 * 1024

var sc = func() *bufio.Scanner {
	sc := bufio.NewScanner(os.Stdin)
	sc.Buffer(make([]byte, ioBufferSize), ioBufferSize)
	sc.Split(bufio.ScanWords)
	return sc
}()

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

func isPrime(a int) bool {
	for j := 2; j*j <= a; j++ {
		if a%j == 0 {
			return false
		}
	}
	return true
}

func main() {
	a, b, m := nextInt(), nextInt(), nextInt()
	minA, minB := 1<<63-1, 1<<63-1
	as, bs := make([]int, a), make([]int, b)

	for i := 0; i < a; i++ {
		as[i] = nextInt()
		if as[i] < minA {
			minA = as[i]
		}
	}
	for i := 0; i < b; i++ {
		bs[i] = nextInt()
		if bs[i] < minB {
			minB = bs[i]
		}
	}

	res := minA + minB
	for i := 0; i < m; i++ {
		x, y, c := nextInt(), nextInt(), nextInt()
		if as[x-1]+bs[y-1]-c < res {
			res = as[x-1] + bs[y-1] - c
		}
	}

	fmt.Println(res)
}
