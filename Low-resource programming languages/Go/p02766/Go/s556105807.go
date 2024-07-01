package main

import "fmt"

func main(){
	var N, K int;
	var ans int;
	fmt.Scan(&N, &K);

	for i:=N ; i > 0 ; {
		i /= K;
	//	fmt.Println(i);
		ans++
	}
	fmt.Println(ans)
}