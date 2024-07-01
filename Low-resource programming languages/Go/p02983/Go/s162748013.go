package main

import "fmt"

func main() {
	var l, r int
	fmt.Scan(&l, &r)
	//2019個以上ならおけ
	w := r-l+1
	if w%2019 == 0{
		fmt.Println(0)
		return
	}
	ans := 2019
	for i:=l; i<=r ; i++ {
		for j :=i+1; j<=r; j++ {
			mod := (i*j)%2019
			if ans > mod {
				ans = mod
			}
			if ans == 0{
				fmt.Println(0)
				return
			}
		}
	}
	fmt.Println(ans)
}