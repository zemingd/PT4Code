package main

import (
	"fmt"
	"bufio"
	"os"
)


var s = bufio.NewScanner(os.Stdin)
func main(){
	S := next()
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
				}else {
					ans = false
				}
				if i==7{
					i=0
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
				}else {
					ans = false
				}
				if i == 6{
					i = 0
				}
			}
		}
	}
	if ans && (i==0 || i==5){
		fmt.Println("YES")
	}else{
		fmt.Println("NO")
	}
}

func next() string {
	s.Split(bufio.ScanWords)
	s.Scan()
	return s.Text()
}