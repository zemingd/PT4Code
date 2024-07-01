package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextStr() string {
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

func gcd(n, m int) int {
	var temp, rem int
	if n < m {
		temp = n
		n = m
		m = temp
	}
	for {
		rem = n % m
		if rem == 0 {
			break
		}
		n = m
		m = rem
	}
	return m
}

func main() {
	sc.Split(bufio.ScanWords)
	a := nextInt()
	b := nextInt()
	//aとb最小公倍数 = a * b / aとbの最大公約数
	fmt.Println(a * b / gcd(a, b))
}