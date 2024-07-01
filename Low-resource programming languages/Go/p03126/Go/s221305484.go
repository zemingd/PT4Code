package main

import (
	"fmt"
)

func main() {
	var n int
	var m int
	fmt.Scan(&n)
	fmt.Scan(&m)
	var arr [50]int
	for i:=0;i < n; i++ {
		var x int
		fmt.Scan(&x)
		for j:=0; j < x; j++{
			var y int;
			fmt.Scan(&y);
			y--;
			arr[y]++;
		}
		
	}
	ans := 0;
	for i:=0; i<m;i++ {
		if arr[i] == n {
			ans++;
		}
	}
	fmt.Println(ans);

}
