package main

import (
	"bufio"
	"fmt"
	"math"
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

var N int
var T int

func main() {
	cols := strings.Split(nextLine(), " ")
	N, _ = strconv.Atoi(cols[0])
	T, _ = strconv.Atoi(cols[1])
	min := math.MaxInt32

	for i := 0; i < N; i++ {
		cols := strings.Split(nextLine(), " ")
		c, _ := strconv.Atoi(cols[0])
		t, _ := strconv.Atoi(cols[1])
		if t > T {
			continue
		}
		if min > c {
			min = c
		}
	}

	if min == math.MaxInt32 {
		fmt.Println("TLE")
	} else {
		fmt.Println(min)
	}
}