package main

import "fmt"

func main(){
	var N, M int
	var L []int
	var ans int

	fmt.Scan(&N,&M)


	for i:=0; i<N; i++{
		//var k []int
		var x int
		fmt.Scan(&x)

		for j:=0; j<x; j++{
			var tmp int
			fmt.Scan(&tmp)
			L = append(L, tmp)
		}
		//L = append(L, k)
	}

	for i:=1; i<=M; i++{
		count := 0
		for _,num := range L {
			if num == i {
				count ++
			}
		}
		if count == N {
			ans ++
		}
	}

	fmt.Println(ans)
}
