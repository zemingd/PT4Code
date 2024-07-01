package main

import (
	"fmt"
)

func main(){
	var A,B,C,K int
	count := 0
	fmt.Scan(&A,&B,&C,&K)
	if A<K{
		count+=A
		K-=A
	}else{
		count+=A
		fmt.Println(count)
		return
	}
	if B<K{
		K-=B
		count-=K
		fmt.Println(count)
		return
	}else{
		fmt.Println(count)
		return
	}

}