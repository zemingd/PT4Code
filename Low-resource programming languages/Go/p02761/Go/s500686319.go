package main

import "fmt"

func main(){
	var n,m int;
	fmt.Scan(&n,&m)
	s := make([]int,m)
	c := make([]int,m)
	var temp_s,temp_c int
	ans := true
	for i := 0 ; i < m ; i++ {
		fmt.Scan(&temp_s,&temp_c)
		for j := 0; j < i ; j++ {
			if temp_s == s[j] && temp_c != c[j] {
				ans = false
				break
			}
		}
		if ans == true {
			s[i] = temp_s
			c[i] = temp_c
		} else {
			break
		}
	}
	if ans {
		if n == 1 {
			for j := 0 ; j < m ; j++ {
				if s[j] == 1 {
					fmt.Println(c[j])
					break
				}
			}
		} else if n == 2{
			one := 0
			ten := -1
			for j := 0 ; j < m ; j++ {
				if s[j] == 1 {
					ten = c[j]
				} else if s[j] == 2 {
					one = c[j]
				}
			}
			if ten == 0 {
				fmt.Println("-1")
			} else if ten > 0 {
				fmt.Println(ten*10 + one)
			} else {
				fmt.Println(10+one)
			}
		} else {
			one := 0
			ten := 0
			hun := -1
			for j := 0 ; j < m ; j++ {
				if s[j] == 1 {
					hun = c[j]
				} else if s[j] == 2 {
					ten = c[j]
				} else if s[j] == 3 {
					one = c[j]
				}
			}
//fmt.Println(hun,ten,one)
			if hun == 0 {
				fmt.Println("-1")
			} else if hun > 0 {
				fmt.Println(hun*100+ten*10+one)
			} else {
				fmt.Println(100+ten*10+one)
			}
		}
	} else {
		fmt.Println("-1")
	}
}
