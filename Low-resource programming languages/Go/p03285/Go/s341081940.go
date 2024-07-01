package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)
	cnt := 0
	for i:=0; i<n/4+1; i++ {
		for j:=0; j<n/7+1; j++ {
			if i*4 + j*7 == n {
				cnt += 1
			}
		}
	}
	if cnt > 0 {
		fmt.Println("Yes")
	}else{
		fmt.Println("No")
	}
}
