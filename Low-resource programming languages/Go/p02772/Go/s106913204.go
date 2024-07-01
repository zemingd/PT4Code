package main

import (
	"fmt"
	//"strconv"
)

func main() {
	var N int
  flag:=1
	fmt.Scanf("%d",&N)
  
    sli := make([]int,N)
  	for i:=0;i<N;i++{
    	fmt.Scanf("%d",&sli[i])
      if sli[i]%2==0{
        if sli[i]%3==0||sli[i]%5==0{
        }else{
          flag=0
       	  break
        }
      }
   	}
  if flag==1{
    fmt.Print("APPROVED")
  }else{
    fmt.Print("DENIED")
  }
}