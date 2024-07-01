package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
	"strings"
)

func main() {
	sc := bufio.NewScanner(os.Stdin)
	sc.Buffer([]byte{}, 1000000000)
	sc.Scan()
	line := sc.Text()
	sped := strings.Split(line, " ")
	a := mustAtoi(sped[0])
	b := mustAtoi(sped[1])

	faca := factorize(math.Sqrt(float64(a)), a, 2)
	facb := factorize(math.Sqrt(float64(b)), b, 2)
	res := []int{}
	for i := range faca {
		_, ok := facb[i]
		if ok {
			res = append(res, i)
		}
	}
	fmt.Printf("%v", len(res))
}

func factorize(maxDivide float64, num int, divide int) map[int]struct{} {
	var nums = map[int]struct{}{1: struct{}{}}
	for float64(divide) < maxDivide || num > 1 {
		mod := num % divide
		if mod == 0 {
			nums[divide] = struct{}{}
			num = num / divide
			continue
		}
		divide++
	}
	return nums
}

func mustAtoi(s string) int {
	i, err := strconv.Atoi(s)
	if err != nil {
		panic(err)
	}
	return i
}
