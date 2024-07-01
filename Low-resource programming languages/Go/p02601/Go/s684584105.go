package main

import "fmt"

func main(){
	var a,b,c,k,i int
	var ans bool
	ans = true
	fmt.Scan(&a,&b,&c)
	fmt.Scan(&k)
	for i=0;;i++ {
		if a < b {
			break
		}
		if i == k {
			ans = false
		}
		b *= 2
	}
	for ;; i++ {
		if b < c {
			break
		}
		if i == k {
			ans = false
		}
		c *= 2
	}
	if ans {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
