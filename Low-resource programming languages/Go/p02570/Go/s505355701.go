package main

import "fmt"

func main() {
	 var d, t, s int
	 fmt.Scan(&d, &t, &s)

	 if t >= d/s{
	 	fmt.Println("Yes")
	 }else{
		fmt.Println("No")
	 }
}