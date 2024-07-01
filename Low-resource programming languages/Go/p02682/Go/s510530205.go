package main

import "fmt"

func main(){
	var A, B, C, K, ans int;

	fmt.Scan(&A, &B, &C, &K);

	ans = A;
	K -= A+B;

	if K > 0 {
		ans -= K;
	}
	fmt.Println(ans);
	
}