package main

import "fmt"

func main(){
	var N, R, ans int
	fmt.Scan(&N, &R);

	if N < 10 {
		ans = 100 * (10-N);
		fmt.Println(ans+R)
	}else{
		fmt.Println(R)
	}
}