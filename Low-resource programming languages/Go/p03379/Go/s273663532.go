package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

func main() {
	n := readInt()
	// vec := make([]int, 0)
	// for i := 0; i < n; i++ {
	// 	vec = append(vec, readInt())
	// }
	vec := readIntLine(n)

	// copy
	cpVec := make([]int, len(vec))
	copy(cpVec, vec)
	sort.Ints(cpVec)

	left := cpVec[n/2-1]
	right := cpVec[n/2]

	for _, v := range vec {
		if v <= left {
			fmt.Println(right)
		} else if v >= right {
			fmt.Println(left)
		} else {
			fmt.Println("ERR")
		}
	}

	// fmt.Println(n)
	// fmt.Println(vec)
	// fmt.Println(cpVec)
}

func readInt() int {
	var a int
	fmt.Scan(&a)
	return a
}

func readIntLine(n int) []int {
	var sc = bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)

	ret := make([]int, 0)

	for i := 0; i < n; i++ {
		sc.Scan()
		v, e := strconv.Atoi(sc.Text())
		if e != nil {
			panic(e)
		}
		ret = append(ret, v)
	}

	return ret
}
