package main

import "fmt"

func main()  {
	var l, r int
	fmt.Scan(&l, &r)
	l %= 673
	r %= 673
	if l<r{
		fmt.Println(l*(l+1)%2019)
	}else{
		fmt.Println(r*(r+1)%2019)
	}
}
