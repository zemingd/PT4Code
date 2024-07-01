package main

import "fmt"

func indexMin(p []int) int {
	min, min_i := 1000000, 0
	for i := 0; i < len(p); i++ {
		if min >= p[i] {
			min = p[i]
			min_i = i
		}
	}
	return min_i
}

func decrease(p []int) bool {
	for i := 0; i < len(p)-1; i++ {
		if p[i] < p[i+1]{
			return false
		}
	}
	return true
}

func main(){
	var x, n, ans int
	ans = 1
	var flag  bool
	fmt.Scan(&n)
	p := make([]int , n)
	for i := 0; i < n; i++ {
		fmt.Scan(&p[i])
	}
	if decrease(p) {
		fmt.Println(n)
	} else {
		x = indexMin(p)
		for i := 1; i <= x; i++ {
			flag = true
			for j := 0; j < i ; j++ {
				if p[i] > p[j] {
					flag = false
					break
				}
			}
			if flag {
				ans++
			}
		}
		fmt.Println(ans)
	}
}
