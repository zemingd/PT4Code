package main

import "fmt"

func main() {
	 var d, t, s int
	 fmt.Scan(&d, &t, &s)

	 if float64(t) >= float64(d)/float64(s){
	 	fmt.Println("Yes")
	 }else{
		fmt.Println("No")
	 }
}