package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	gcd := GCD(nextInt(), nextInt())
	fmt.Println(1 + len(Factorize(gcd)))
}

func Factorize(n int) [][]int {
	res := [][]int{}
	for i := 2; i*i <= n; i++ {
		if n%i != 0 {
			continue
		}
		cnt := 0
		for n%i == 0 {
			n /= i
			cnt++
		}
		res = append(res, []int{i, cnt})
	}
	if n != 1 {
		res = append(res, []int{n, 1})
	}
	return res
}

func GCD(a, b int) int {
	if b == 0 {
		return a
	}
	return GCD(b, a%b)
}

var sc = bufio.NewScanner(os.Stdin)

func init() {
	sc.Buffer(make([]byte, 256), 1e9)
	sc.Split(bufio.ScanWords)
}

func next() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	a, _ := strconv.Atoi(next())
	return a
}
