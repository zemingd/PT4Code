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

func main() {
	sc.Split(bufio.ScanWords)
	A := nextInt()
	B := nextInt()

	C := A
	if A > B {
		C = B
	}

	// 公約数求める
	k := make([]int, 0)
	// k = append(k, 1)
	for i := 2; i < C; i++ {
		if A%i == 0 && B%i == 0 {
			k = append(k, i)
		}
	}

	// 互いに素のみを残す
	for i := 0; i < len(k); i++ {
		if k[i] == -1 {
			continue
		}
		for j := i + 1; j < len(k); j++ {
			if k[j] == -1 {
				continue
			}
			if k[j]%k[i] == 0 {
				k[j] = -1
			}
		}
	}

	ret := 1
	for i := 0; i < len(k); i++ {
		if k[i] > 0 {
			ret++
		}
	}
	// fmt.Println(k)
	fmt.Println(ret)
}
