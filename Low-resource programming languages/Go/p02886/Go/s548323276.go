package main

import "fmt"

func main() {
 n := 0
 hp := 0
 //たこ焼きの個数を受け取る
 fmt.Scanf("%d",n)
 
 //たこ焼きのおいしさを配列に格納
 num := make([]int,n)
 for i:=0; i < n; i++ {
 	fmt.Scanf("%d",num[i])
 }

 for i:=0; i < n-1; i++ {
   for j:=i+1; j<n; j++ {
     hp += num[i] * num[j]
   }
 }
 fmt.Printf("%d",hp)
}