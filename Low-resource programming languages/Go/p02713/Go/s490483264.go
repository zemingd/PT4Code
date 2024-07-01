package main

import (
  "fmt"
)
func gcd(temp1 int,temp2 int) int{
       var gcdnum int
    /* Use of And operator in For Loop */  
    for i := 1; i <=temp1 && i <=temp2 ; i++ {
            if(temp1%i==0 && temp2%i==0) {
                gcdnum=i
            } 
        }
        //fmt.Printf("GCD of %d and %d is %d",temp1,temp2,gcdnum)
    return gcdnum;
}  

func main(){
  var n int;
  fmt.Scan(&n);
  var sum int64;
  for i:=1;i<=n;i++{
    for j:=1;j<=n;j++{
      for k:=1;k<=n;k++{
        sum+= int64(gcd(gcd(i,j),k))
      }
    }
  }
  fmt.Println(sum)
}