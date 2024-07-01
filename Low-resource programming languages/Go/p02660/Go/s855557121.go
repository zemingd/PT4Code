package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func primeFactors(n int) []int {
	factors := make([]int, 0)
	i := 2
	for i*i <= n {
		r := n % i
		if r != 0 {
			i++
		} else if r == 0 {
			n /= i
			factors = append(factors, i)
		}
	}
	if n > 1 {
		factors = append(factors, n)
	}
	return factors
}

func solution(n int) int {
	var res int
	occ := make(map[int]int)
	for _, v := range primeFactors(n) {
		occ[v]++
	}
	fib := []int{1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144}
	for _, value := range occ {
		var count int
		for _, v := range fib {
			value = value - v
			if value >= 0 {
				count++
			} else {
				break
			}
		}
		res += count
	}
	return res
}

var sc = bufio.NewScanner(os.Stdin)

func main() {
	n := getStdinInt()
	fmt.Println(solution(n)) // [2 2 2 2 3 5 5]
}

func getStdinInt() int {
	sc.Scan()
	rtn, _ := strconv.Atoi(sc.Text())
	return rtn
}