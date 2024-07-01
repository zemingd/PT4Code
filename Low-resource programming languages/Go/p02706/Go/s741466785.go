package main

import "fmt"

func main(){
	var n, m int
	var ans int

	fmt.Scan(&n, &m)
	var A = make([]int, m)

	for i := 0 ; i < m ; i++{
		fmt.Scan(&A[i])
	}
	for i := 0 ; i < m ; i++{
		ans += A[i]
	}

	if n - ans < 0{
		fmt.Println("-1")
	}else {
		fmt.Println(n-ans)
	}
}