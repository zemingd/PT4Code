package main

import "fmt"

func calc(c []int, a []int, n int, m int, x int, i int, temp []int) int {
	if i == n {
		var cost int
		for j:= 0 ; j<len(temp) ; j++ {
			cost += c[temp[j]]
		}
		for k:=0 ; k<m ; k++ {
			var tt int
			for j:=0 ; j<len(temp) ; j++ {
				tt += a[temp[j]*m+k]
			}
			if tt < x {
				return -1
			}
		}
		return cost
	}



	//入れる
	take := calc(c,a,n,m,x,i+1,append(temp,i))

	//入れない
	non := calc(c,a,n,m,x,i+1,temp)
	if take != -1 {
		if non != -1 {
			if take < non {
				return take
			} else {
				return non
			}
		} else {
			return take
		}
	} else {
		if non != -1 {
			return non
		} else {
			return -1
		}
	}
}

func main(){
	var n,m,x int
	var temp []int
	fmt.Scan(&n,&m,&x)
	c := make([]int,n)
	a := make([]int,n*m)
	sat := make([]int,m)
	for i:=0 ; i<n ; i++ {
		fmt.Scan(&c[i])
		for j:=0 ; j<m ; j++ {
			fmt.Scan(&a[i*m+j])
			sat[j] += a[i*m+j]
		}
//fmt.Println(a[i*m:(i+1)*m])
	}
	flag := true
	for i:=0 ; i<m ; i++ {
		if sat[i] < x {
			flag = false
			break
		}
	}
	if !flag {
		fmt.Println("-1")
	} else {
		fmt.Println(calc(c,a,n,m,x,0,temp))
	}
}
