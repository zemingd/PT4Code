package main

import "fmt"

func main(){
	var A, B, C, K, ans int;

	fmt.Scan(&A, &B, &C, &K);

	ans = A
	if K - B <= 0 {
		fmt.Println(ans);
	}else  {
		K = K-B;
		ans -= C;
		fmt.Println(ans);
	}
	
}