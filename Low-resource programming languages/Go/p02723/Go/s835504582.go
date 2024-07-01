package main

import "fmt"

func main(){
	var s string;
  fmt.Scan(&s);

    if(s[3]==s[4] &&s[5]==s[6]){
      fmt.Println("Yes")
    }else{
      fmt.Println("No")
    }
  
}