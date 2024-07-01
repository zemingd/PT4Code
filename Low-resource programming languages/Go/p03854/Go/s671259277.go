package main

import (
	"fmt"
)


func main(){
	var S string
	fmt.Scan(&S)
	s := []byte(S)
	dreamer := "dreamer"
	eraser := "eraser"
	var f int
	var i int
	var ans bool
	ans = true
	for _, b := range s{
		//fmt.Println(i, l, b, ans)
		if !ans || i > len(s){break}
		if i == 0{
			if b == dreamer[i] {
				i++
				f = 0
			}else if b == eraser[i] {
				i++
				f = 1
			}else if b == eraser[2]{
				i = 3
				f = 1
			}else{
				ans = false
			}
		}else{
			if f == 0 {
				if b == dreamer[i]{
					i++
				}else if b==eraser[0] &&(i== 5){
					i = 1
					f = 1
				}else if b==dreamer[0]&&(i== 5){
					i = 1
					f = 0
				}else if b == eraser[2]{
					i = 3
					f = 1
					fmt.Println("bbb")
				}else {
					ans = false
				}
			}else if f == 1 {
				if b == eraser[i]{
					i++
				}else if b == eraser[0]&&(i==5){
					i = 1
					f = 1
				}else if b == dreamer[0]&&(i== 5) {
					i = 1
					f = 0
				}else if b == eraser[2]{
					i = 3
					f = 1
					fmt.Println("aa")
				}else {
					ans = false
				}
			}
		}
		if i == 7 {
			i = 0
		}
	}
	//log.Println(i, ans)
	if ans &&( i == 5 || i == 0 || i == 6){
		fmt.Println("YES")
	}else{
		fmt.Println("NO")
	}
}