package main

import "fmt"

func main(){
	var S string
	var a[200] int
	var i, count int
	var x string

	fmt.Scan(&S)

	for i = 0 ; i < len(S) ; i++ {
		a[S[i]]++
	}
	for i = 'a' ; i <= 'z' ; i++{
		if a[i] == 0 {
			break;
		}else {count++}
	}
	if count == 26{
		 fmt.Println("None")
	}else{
		x = string(i)
		 fmt.Println(x)
	}
}