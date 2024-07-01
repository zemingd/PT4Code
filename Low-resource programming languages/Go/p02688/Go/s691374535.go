package main

import "fmt"

func main() {
	var n, k int
	fmt.Scan(&n, &k)

	d := make([]int, n)
	a := make(map[int][]int, n)
	for i := 0; i < k; i++ {
		fmt.Scan(&d[i])
		aa := make([]int, d[i])
		for j := 0; j < d[i]; j++ {
			fmt.Scan(&aa[j])
		}
		a[i] = aa
	}

	temp := make([]int, 0)
	tempCount := 0
	for i := 0; i < k; i++ {
		if i == 0 {
			temp = a[i]
			tempCount = len(temp)
		}
		for j := 0; j < d[i]; j++ {
			for _, v := range temp {
				if v == a[i][j] {
					goto A
				}
			}
			if j == d[i]-1 {
				temp[tempCount] = a[i][j]
			}
		}
	A:
	}
	fulfilled := make([]int, n)
	for i := 1; i <= n; i++ {
		fulfilled[i-1] = i
	}

	fmt.Println(n - compare(fulfilled, temp))

}

func compare(a, b []int) int {
	count := 0
	for _, v := range a {
		for _, v2 := range b {
			if v == v2 {
				count++
			}
		}
	}
	return count
}