package main

import (
	"fmt"
)

func main(){
    var ABC = make([]int,3)
    for i := 0; i < len(ABC); i++ {
		fmt.Scanln(&ABC[i])
	}

  	if ABC[0] == ABC[1] && ABC[1] != ABC[2]{
      fmt.Println("Yes")
    } else if ABC[1] == ABC[2] && ABC[2] != ABC[0]{
      fmt.Println("Yes")
    } else if ABC[2] == ABC[0] && ABC[1] != ABC[0]{
      fmt.Println("Yes")
    } else {
      fmt.Println("No")
	}
	
	
	
    
}