package main

import "fmt"

func main()  {
	var l, r int
	fmt.Scan(&l, &r)
	l %= 2019
	r %= 2019
	if l<r{
		fmt.Println(l*(l+1)%2019)
	}else{
		fmt.Println(r*(r+1)%2019)
	}

}
