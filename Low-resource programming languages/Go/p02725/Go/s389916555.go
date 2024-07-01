package main

import "fmt"

func main(){
	var K, N, ans int
	fmt.Scan(&K, &N)
	A := make([]int, N)

	for i := 0 ; i < N ; i++ {
		fmt.Scan(&A[i])
	}
	
	if A[1] - A[0] < K-A[N-1]+A[0]{
		for i := 1 ; i < N ; i++{
			ans += A[i]-A[i-1]
			fmt.Println(ans)
		}
	}else{
		for i := 2 ; i < N ; i++ {
			ans += A[i]-A[i-1]
		}
		if N > 3 {
			ans += K-A[N-1]+A[0]
		}
	}

	fmt.Println(ans)
}