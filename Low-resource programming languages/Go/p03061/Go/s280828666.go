package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	var n int
	fmt.Scan(&n)

	scanner := bufio.NewScanner(os.Stdin)
	scanner.Split(bufio.ScanWords)
	a := make([]int, n, n)

	for i := 0; i < n; i++ {
		scanner.Scan()		
		tmp, _ := strconv.Atoi(scanner.Text())
		a[i] = tmp
	}

	west := make([]int, n, n)
	east := make([]int, n, n)

	west[0] = a[0]
	east[0] = a[n - 1]
	for i := 1; i < n; i++ {
		west[i] = gcd(a[i], west[i - 1])
		east[i] = gcd(a[n - 1 - i], east[i - 1])
	}

	answer := 1
	for i := 0; i < n; i++ {
		var m int
		if i == 0 {
			m = east[n - 2]
		} else if i == n - 1 {
			m = west[n - 2]
		} else {
			m = gcd(west[i - 1], east[n - i - 2])
		}
		if m > answer {
			answer = m
		}
	}

	fmt.Println(answer)
}

func gcd(n1 int, n2 int) int {
	if n1 % n2 == 0 {
		return n2
	}
	return gcd(n2, n1 % n2)
}
