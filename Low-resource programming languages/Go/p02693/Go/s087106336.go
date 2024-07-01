package main

import "fmt"

func main() {
	var K, A, B int
	fmt.Scan(&K,&A,&B)
	if A%K==0||B%K==0{
		fmt.Println("OK")
      return
	}
	for i:=0; i<B-A;i++ {
		if (A+i)%K==0 {
			fmt.Println("OK")
			return
		}
	}
 fmt.Println("NG")

}