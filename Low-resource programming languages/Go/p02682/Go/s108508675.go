package main

import(
	"fmt"
)

func main(){
	var a, b, c, k, max int
	fmt.Scan(&a, &b, &c, &k)
	for i:=0; i < k; {
		for m:=0; i < k && m < a; m++{
			max += 1
			i++
		}
		for l:=0; i < k && l < b; l++{
			i++
		}
		for n:=0; i < k && n < c; n++{
			max -= 1
			i++
		}	
		fmt.Println(max)
	}
}