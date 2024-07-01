package main

import "fmt"

func main(){
	N := 3
	var temp int
	a := make([]int, N*N)
	hole := make([]bool, N*N)
	for i := 0 ; i < N*N ; i++ {
		fmt.Scan(&a[i])
	}
//fmt.Println(a)
	var n int
	fmt.Scan(&n)
	for i := 0 ; i < n ; i++ {
		fmt.Scan(&temp)
//fmt.Println(temp)
		for j := 0 ; j < N*N ; j++ {
			if temp == a[j] {
				hole[j] = true
				break
			}
		}
	}
//fmt.Println(hole)
	//vir
	var ans bool
	if hole[0] && hole[4] && hole[8] {
		ans = true
	} else if hole[2] && hole[4] && hole[6] {
		ans = true
	}
	if ans != true{
		for i := 0 ; i < N ; i++ {
			if hole[i*3] && hole[i*3+1] && hole[i*3+2] {
				ans = true
				break
			}
			if hole[3*0+i] && hole[3*1+i] && hole[3*2+1] {
				ans = true
				break
			}
		}
	}
	if ans {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
