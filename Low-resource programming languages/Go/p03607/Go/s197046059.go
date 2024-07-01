package main

import "fmt"

func main(){
	var N,num,count int
	fmt.Scan(&N)
	m := make(map[int]int)
	for i := 0;i<N;i++{
		fmt.Scan(&num)
		if m[num] == 0{
			m[num] = 1
		}else{
			m[num] = 0
		}
	}
	for _,value := range m{
		count += value
	}
	fmt.Println(count)
}