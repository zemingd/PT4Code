package main

import (
	"bufio"
	"fmt"
	"os"
	_ "sort"
	"strconv"
	"strings"
)

var sc = bufio.NewScanner(os.Stdin)

func nextLine() string {
	sc.Scan()
	return sc.Text()
}

func convertToInt(s []string, len int) []int {
	ret := make([]int, len)
	for i := 0; i < len; i++ {
		ret[i], _ = strconv.Atoi(s[i])
	}
	return ret
}

func main() {
	line := nextLine()
	cols := strings.Split(line, " ")
	A, _ := strconv.Atoi(cols[0])
	B, _ := strconv.Atoi(cols[1])
	K, _ := strconv.Atoi(cols[2])

	check := make(map[int]bool)
	//n := make([]int, 0)

	for i := A; i < A+K; i++ {
		if A <= i && i <= B {
			if !check[i] {
				check[i] = true
				//n = append(n, i)
				fmt.Println(i)
			}
		}
	}

	for i := B - K + 1; i <= B; i++ {
		if A <= i && i <= B {
			if !check[i] {
				check[i] = true
				// n = append(n, i)
				fmt.Println(i)
			}
		}
	}
}
