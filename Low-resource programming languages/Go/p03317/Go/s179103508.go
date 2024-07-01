package main

import "fmt"

func main(){
	var n, k int
	fmt.Scanf("%d %d",&n,&k)
	a := make([]int,n)
	for i := range a {
		fmt.Scanf("%d",a[i])
	}
	var ans int
	if (n-1) % (k-1) == 0{
		ans = (n-1) / (k-1)
	} else {
		ans = (n-1) / (k-1) + 1
	}
	fmt.Println(ans)
}