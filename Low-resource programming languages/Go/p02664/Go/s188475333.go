package main

import "fmt"

func main(){
	var s,ans string
	fmt.Scan(&s)
	for i:=len(s)-1 ; i>=0 ; i-- {
//fmt.Println(s[i:i+1])
		if s[i:i+1] == "?"{
			ans = "D" +ans
			/*if i != len(s)-1 && ans[0:1] == "D" {
				//fmt.Printf("P")
				ans = "P" + ans
			} else {
//fmt.Printf("else %v",s[i:i+1])
				//fmt.Printf("D")
				ans = "D" + ans
			}*/
		} else {
			ans = s[i:i+1] + ans
			//fmt.Printf("%v",s[i:i+1])
		}
	}
	/*for i:=len(ans)-1 ; i>=0 ; i-- {
		fmt.Printf("%v",ans[i:i+1])
	}*/
	fmt.Println(ans)
}
