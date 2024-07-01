package main

import "fmt"

func shift(a []int, x int) []int {
//fmt.Println("shift : ",a,x)
	for i := len(a)-1 ; i > x; i-- {
		a[i] = a[i-1]
	}
	return a
}

func insertSort(a []int, x int, n int) ([]int,bool) {
	for i := 0 ; i < n ; i++ {
		if a[i] == 0 {
			a[i] = x
			return a,true
		} else if a[i] == x {
			return a,false
		} else if a[i] > x {
			a = shift(a,i)
			a[i] = x
			return a,true
		}
	}
	return a,true
}

func main(){
	var n,x int
	flag := true
	fmt.Scan(&n)
	a := make([]int,n)
	for i := 0 ; i < n ; i++ {
		fmt.Scan(&x)
//fmt.Println(a)
		if flag {
			a,flag = insertSort(a,x,i+1)
		}
//fmt.Println(a)
	}
	if flag {
		fmt.Println("YES")
	} else {
		fmt.Println("NO")
	}
}
