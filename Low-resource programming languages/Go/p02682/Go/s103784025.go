package main

import "fmt"

func main(){
	var A, B, C, K, ans int;

	fmt.Scan(&A, &B, &C, &K);


	for i := 0 ; i < A ; i++ {
		ans++;
		K--;		
	}
	if K - B <= 0 {
		fmt.Println(ans);
	}else  {
		K = K - B;
		for i := 0 ; i < K ; i++ {
			ans--
			if K <= 0 {
				break;
			}
			K--
		}
		fmt.Println(ans);
	}
	
}