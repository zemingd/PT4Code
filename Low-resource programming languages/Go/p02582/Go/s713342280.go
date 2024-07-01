package main

import "fmt"

func main(){
	var ans,m int
	var n string
	fmt.Scan(&n)
	for i:=0;i<3;i++ {
		if n[i] == 'R' {
			ans++
		} else {
			if m < ans {
				m = ans
			}
			ans = 0
		}
	}
	if m < ans {
		m = ans
	}
	fmt.Println(m)
}
