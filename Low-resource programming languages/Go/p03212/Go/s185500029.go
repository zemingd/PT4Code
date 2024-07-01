package main

import (
	"bufio"
	"os"
	"strconv"
	"fmt"
)

var sc = bufio.NewScanner(os.Stdin)

func nextString() string {
	if !sc.Scan() {
		panic("failed scan string")
	}
	return sc.Text()
}

func nextInt() int {
	if !sc.Scan() {
		panic("failed scan int")
	}
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func main() {
	sc.Split(bufio.ScanWords)
	n := nextInt()
	var ns []int
	kk := n
	for kk != 0 {
		ns = append(ns, kk%10)
		kk /= 10
	}

	k := calc(n, 0, 0, len(ns))
	fmt.Println(k)
}

func calc(n, p, a, length int) int {
	var k int
	if check(p) && p <= n {
		k ++
	}
	if a < length {
		k += calc(n, p*10+3, a+1, length)
		k += calc(n, p*10+5, a+1, length)
		k += calc(n, p*10+7, a+1, length)
	}
	return k
}

func check(p int) bool {
	var b [10]bool
	for p != 0 {
		b[p%10] = true
		p /= 10
	}
	if b[3] && b[5] && b[7] {
		return true
	} else {
		return false
	}
}

func full(n int) int {
	return pow(3, n) - (3 * pow(2, n-1)) + 3
}

func pow(i, n int) int {
	result := 1
	for k := 0; k < n; k++ {
		result *= i
	}
	return result
}
