package main

import "fmt"

func main(){
	var a,b,v,w,t int
	fmt.Scan(&a,&v)
	fmt.Scan(&b,&w)
	fmt.Scan(&t)
	if v <= w {
		fmt.Println("NO")
	} else {
		var dis int
		if a < b {
			dis = b-a
		} else {
			dis = a-b
		}
		if (v-w)*t >= dis {
			fmt.Println("YES")
		} else {
			fmt.Println("NO")
		}
	}
}
