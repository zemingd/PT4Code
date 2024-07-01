package main

import "fmt"

func main() {
	var K, A, B int
	fmt.Scan(&K,&A,&B)
	if A%K==0||B%K==0{
		fmt.Println("OK")
	} else if B-A >K {
		fmt.Println("OK")
    } else {
		 fmt.Println("NG")
	 }

}