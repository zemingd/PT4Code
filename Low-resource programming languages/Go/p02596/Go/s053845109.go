package main

import "fmt"

func main(){
	var k int
	var flag bool
	fmt.Scan(&k)
	t := 7
	if k%t == 0 {
		fmt.Println(1)
	} else {
		flag = false
		for i:=2;i<=k;i++ {
			t = (10*t+7)%k
			if t == 0 {
				flag = true
				fmt.Println(i)
				break
			}
		}
	}
	if !flag {
		fmt.Println("-1")
	}
}
