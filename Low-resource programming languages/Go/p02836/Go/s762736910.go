package main 

import "fmt"

func main() {
	var s string
	fmt.Scan(&s)
	length := len(s)
	count := 0
	if length % 2 == 0{
		for i := 0; i<(length/2) ; i++{
			if s[i] != s[length-1-i] {
				count++
			}
		}
		fmt.Printf("%d", count)
	} else {
		for i:=0; i < (length/2);i++{
			if s[i] != s[length-1-i] {
				count++
			}
		}
		fmt.Printf("%d",count)
	}
}