package main

import "fmt"

func main(){
	var n,k,d,x,ans int
	fmt.Scan(&n,&k)
	have := make([]int,n+1)
	for i:=0 ; i<k ; i++ {
		fmt.Scan(&d)
		for j:=0 ; j<d; j++ {
			fmt.Scan(&x)
			have[x]++
		}
	}
	for i:=1 ; i<=n ; i++ {
		if have[i] == 0{
			ans++
		}
	}
	fmt.Println(ans)
}
