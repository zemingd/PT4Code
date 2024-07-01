package main

import "fmt"

func main(){
	var H, A, ans int;
	fmt.Scan(&H, &A);

	for i := H ; i > 0 ; i-=A {
		ans++;
	}

	fmt.Println(ans);
}