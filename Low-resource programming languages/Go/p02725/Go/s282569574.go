package main

import "fmt"

func main(){
	var K, N, ans int
	fmt.Scan(&K, &N)
	A := make([]int, N)

	for i := 0 ; i < N ; i++ {
		fmt.Scan(&A[i])
	}
	// tmp := A[1] - A[0]
	// for i := 2 ; i < N - 1 ; i++ {
	// 	tmp+= A[i] -A[i-1] 
	// }
	// if K - A[N-1] > A[N-1]{
	// 	tmp+=K-A[N-1]
	// }else {
	// 	tmp+= A[N-1]
	// }
	if A[N-1] - A[0] > K-A[N-1]+A[0]{
		//  ans = A[1]-A[0]
		for i := 1 ; i < N-1 ; i++ {
			ans += A[i] - A[i-1]
		}
		ans +=  K-A[N-1]+A[0]
	}else{
		for i := 1 ; i < N ; i++ {
			ans += A[i] - A[i-1]
			// fmt.Println(ans)
		}
	}

	fmt.Println(ans)
}