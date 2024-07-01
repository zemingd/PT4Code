package main

import "fmt"

func main() {
	var s, t int
	fmt.Scan(&s)
	var numList []int
	numList = append(numList, s)

	for i := 1; true; i++ {
		if (numList[i-1])%2 == 0 {
			t = numList[i-1] / 2
		} else {
			t = 3*numList[i-1] + 1
		}
		if Contains(numList, t) {
			fmt.Println(i + 1)
			break
		}
		numList = append(numList, t)
	}
}

func Contains(a []int, x int) bool {
	for _, n := range a {
		if x == n {
			return true
		}
	}
	return false
}
