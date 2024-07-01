package main 

import "fmt"

var a, b, c, k int

func main () {
	ans := "No"
	fmt.Scan(&a, &b, &c, &k)
	for i:=0; i<k; i++{
		if a>b {
			b *= 2 
		}else if b>c{
			c *= 2
		}
		if a<b && b<c {
			ans = "Yes"
		}
	}
	fmt.Println(ans)
}