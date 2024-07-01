package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"sort"
	"strconv"
	"strings"
)

var sc = bufio.NewScanner(os.Stdin)

func nextLine() string {
	sc.Scan()
	return sc.Text()
}

func unset(s []int, i int) []int {
	if i >= len(s) {
		return s
	}
	return append(s[:i], s[i+1:]...)
}

func nearZero(s []int) int {
	min := math.Abs(float64(s[0]))
	minIdx := 0
	for i := 0; i < len(s); i++ {
		if math.Abs(float64(s[i])) > min {
			break
		}
		if math.Abs(float64(s[i])) < min {
			min = math.Abs(float64(s[i]))
			minIdx = i
		}
	}
	return minIdx
}

func main() {
	nl := strings.Fields(nextLine())
	n, _ := strconv.Atoi(nl[0])
	l, _ := strconv.Atoi(nl[1])
	apples := make([]int, n)
	for i := 1; i <= n; i++ {
		apples[i-1] = l + i - 1
	}
	sort.Ints(apples)
	if apples[0] >= 0 && apples[n-1] >= 0 {
		apples = unset(apples, 0)
	} else if apples[0] < 0 && apples[n-1] >= 0 {
		apples = unset(apples, nearZero(apples))
	} else {
		apples = unset(apples, n-1)
	}
	answer := 0
	for i := range apples {
		answer += apples[i]
	}
	fmt.Println(answer)
}
