package main

import (
	"fmt"
)

func main(){
	var A,B,C,K int
	fmt.Scan(&A,&B,&C,&K)
    if A >= K {
        fmt.Println(K)
        return
    } else if(A+B >= K) {
        fmt.Println(A)
        return
    }else if(A+B+C >= K) {
        fmt.Println(A + (K - B - C))
        return
    }

}
