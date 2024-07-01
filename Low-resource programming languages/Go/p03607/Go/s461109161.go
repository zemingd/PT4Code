package main

import(
	. "fmt"	
)
func main(){
	N:=0
	ct:=0
	var K string
	m:=make(map[string]int)
	Scan(&N)
	for i:=0;i<N;i++{
		Scan(&K)
		if m[K]==1{
			delete(m,K)
			ct--
		}else{
			m[K]=1
			ct++
		}
		
	}
	
	Println(ct)

}