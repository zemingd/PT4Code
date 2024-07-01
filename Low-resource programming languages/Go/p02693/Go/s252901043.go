package main

import "fmt"

func main() {
	var K, A, B int
	fmt.Scan(&K,&A,&B)
  flag:=false
	if A%K==0||B%K==0{
		fmt.Println("OK")
      return
	} else if B-A >=K {
		fmt.Println("OK")
      return
	}
  
	for i:=0; i<A-B;i++ {
		if (A+i)%K==0 {
			fmt.Println("OK")
          flag=true
			break
		}
	}
  if flag {
	 fmt.Println("NG")
  }

}