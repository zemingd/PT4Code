package main

import (
	"fmt"
)

type ll int64


func main() {

	var N int
	fmt.Scan(&N)


	a := make([]int, N+1)
	ans := 0
	ans_slice := make([]int,N+1)


	for i := 0 ; i < N ;i++ {
		//1 origin
		fmt.Scan(&a[i+1])
	}

	ans_flag := 0
	for i:= N; i > 0 ; i--  {//Nから1まで

		k:= i
		j := 1
		ans_flag = 0

		for k <= N  {
			ans_flag += a[k]
			j++
			k = i * j
		}


		if ans_flag % 2 != 0 {//2で割り切れない
			ans++
			ans_slice[i] = 1
		}

	}






	fmt.Println(ans)
	for i:=1;i <=N ;i++  {
		if ans_slice[i] == 1 {
			fmt.Print(i)
			fmt.Print(" ")
		}
	}
	fmt.Println("")

}
