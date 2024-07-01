package main

import "fmt"

func main(){
	var h,a,count int
	fmt.Scan(&h,&a)
	for ;; {
		h -= a
		count++
		if h <= 0{
			break
		}
	}
	fmt.Println(count)
}
