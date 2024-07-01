package main

import "fmt"

func pow(k int,i int) int {
	f := 1
	for j := 1 ; j <= i ; j++{
		f *= k
	}
	return f
}

func main(){
	var n,k,f int
	fmt.Scan(&n,&k)
	for i := 0 ; ;i++ {
		f = pow(k,i)
		if n < f{
			fmt.Println(i)
			break
		}
	}
}
