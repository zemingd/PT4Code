package main

import "fmt"

func main() {
	var a int
	fmt.Scan(&a)
	li := make([]int, a)
	for i:=0; i<a; i++ {
		fmt.Scan(&li[i])
	}
	ans :=0
	for i:=0; i<a-1; i++ {
		for j:=i+1; j<a; j++ {
			ans += li[i]*li[j]
		}
	}
	fmt.Println(ans)
}