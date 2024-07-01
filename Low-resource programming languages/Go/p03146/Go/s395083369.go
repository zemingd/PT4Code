package main

import "fmt"

func od(n int) int{
	return 3*n+1
}

func ev(n int) int{
	return n/2
}

func main() {
	var s int
	fmt.Scan(&s)
	m := make(map[int]int)
	m[s]++
	var tmp,cnt int
	cnt=1
	tmp=s
	for m[tmp]<=1 {
		if tmp%2==0 {
			tmp = ev(tmp)
		} else {
			tmp = od(tmp)
		}
		m[tmp]++
		cnt++
	}
	fmt.Println(cnt)
}