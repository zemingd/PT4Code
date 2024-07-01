package main

import (
	"fmt"
)

// bit全探索

func main(){
	var n int
	fmt.Scan(&n)


	for index:= 1;  index <=  n; index++ {
		cnt := 0
		for i := 1; i*i <= n;i++ {
			for j := 1; j *j <= n; j++ {
				for k := 1; k *k <= n; k++ {
					shiki := i*i +j*j+k*k +i*j+j*k+k*i
					if index < shiki{
						break
					}
					if index == shiki{
						cnt++
					}
				}
			}
		}
		fmt.Println(cnt)
	}
}
