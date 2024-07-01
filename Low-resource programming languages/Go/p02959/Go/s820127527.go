package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)
	a := scanNums(n + 1)
	b := scanNums(n)

	var answer int
	for k, v := range b {
		if a[k] >= v {
			a[k] -= v
			answer += v
		} else {
			v -= a[k]
			answer += a[k]
			a[k] = 0
			if a[k+1] <= v {
				answer += a[k+1]
				a[k+1] = 0
			} else {
				a[k+1] -= v
				answer += v
			}
		}
	}
	fmt.Println(answer)
}

func scanNums(length int) (numbers []int) {
	var number int
	for i := 0; i < length; i++ {
		fmt.Scan(&number)
		numbers = append(numbers, number)
	}
	return
}