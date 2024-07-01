package main

import "fmt"

func main(){
	var s,ans string
	fmt.Scan(&s)
	for i:=len(s)-1 ; i>=0 ; i-- {
//fmt.Println(s[i:i+1])
		if s[i:i+1] == "?"{
			if i != len(s)-1 && ans[len(ans)-1:len(ans)] == "D" {
				//fmt.Printf("P")
				ans += "P"
			} else {
//fmt.Printf("else %v",s[i:i+1])
				//fmt.Printf("D")
				ans += "D"
			}
		} else {
			ans += s[i:i+1]
			//fmt.Printf("%v",s[i:i+1])
		}
	}
	for i:=len(ans)-1 ; i>=0 ; i-- {
		fmt.Printf("%v",ans[i:i+1])
	}
	fmt.Println("")
}
