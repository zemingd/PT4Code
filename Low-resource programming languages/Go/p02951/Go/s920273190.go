package main

import . "fmt"

func main() {

	var a,b,c int

	Scan(&a,&b,&c)

	if(b + c < a){
		Println(0)
	}else{
		Println(c - a +b)
	}

}
