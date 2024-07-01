package main

import "fmt"

func main() {
	var n, m, x int
	fmt.Scan(&n, &m, &x)
	c := make([]int, n)
	a := make(map[int][]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&c[i])
		a[i] = make([]int, m)
		for j, _ := range a[i] {
			fmt.Scan(&a[i][j])
		}
	}

	//全探索
	ans := 0
	count := 0
	for i := 0; i < 1<<uint(n); i++ {
		price := 0
		exp := make([]int, m)
		for j := 0; j < n; j++ {
			if i>>uint(j)&1 == 1 {
				price += c[j]
				for k := 0; k < m; k++ {
					exp[k] += a[j][k]
				}
			}
		}

		temp := 0
		for _, v := range exp {
			if v >= x {
				temp++
			}
		}
		if temp > count {
			ans = price
			count = temp
		}
	}
	if count < m {
		fmt.Println(-1)
		return
	}
	fmt.Println(ans)

}