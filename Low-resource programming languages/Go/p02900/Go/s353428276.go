package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

// AtCoder Functions
var sc = bufio.NewScanner(os.Stdin)

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}
func spliceRemove(index int, slice []int) []int {
	slice = append(slice[:index], slice[index+1:]...)
	return slice
}

func main() {
	sc.Split(bufio.ScanWords)
	A := nextInt()
	B := nextInt()

	// GCD
	a := A
	b := B
	r := a % b
	for {
		if r == 0 {
			break
		}
		a = b
		b = r
		r = a % b
	}
	maxk := b
	// fmt.Println(maxk)

	// 公約数求める
	k := make([]int, 0)
	for d := 1; d <= maxk; d++ {
		if maxk%d == 0 {
			k = append(k, d)
		}
	}
	k = spliceRemove(0, k)
	// fmt.Println(k)

	// 互いに素のみを残す
	max := len(k)
	for i := 0; i < max; i++ {
		for j := i + 1; j < max; j++ {
			if k[j]%k[i] == 0 {
				k = spliceRemove(j, k)
				j--
				max--
			}
		}
	}

	fmt.Println(len(k) + 1)
}
