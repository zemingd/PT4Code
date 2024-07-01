package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
	"strings"
)

func main() {
	n := readInt()
	vec := readIntLine()

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

func readIntLine() []int {
	var sc = bufio.NewScanner(os.Stdin)
	sc.Scan()
	line := sc.Text()
	vals := strings.Split(line, " ")
	vec := make([]int, 0)
	for _, v := range vals {
		// n, err := strconv.ParseInt(v, 10, 64)
		n, err := strconv.Atoi(v)
		if err != nil {
			panic(err)
		}
		vec = append(vec, n)
	}
	return vec
}
