package main

import "fmt"

func main(){
	var S string
	var count int
	count = 0
	fmt.Scan(&S)

	
	if S[0] == '0' {
		for i := 0 ; i < len(S) ; i++ {
			if i % 2 == 0{
				if S[i] != '0'{
					count++
				}
			}else {
				if S[i] != '1'{
					count++
				}
			}
		}
	}else {
		for i := 0 ; i < len(S) ; i++ {
			if i % 2 == 1{
				if S[i] != '0'{
					count++
				}
			}else {
				if S[i] != '1' {
					count++
				}
			}
		}
	}
	fmt.Println(count)
}