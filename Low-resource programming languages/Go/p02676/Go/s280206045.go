package main

import "fmt"

func main() {
	var K, S string
  
  	fmt.Scanf("%s", &K)
  	fmt.Scanf("%s", &S)
  	if len(K) >= len(S) {
    	fmt.Println(S)
    } else{
      	fmt.Println(S[:len(K)] + "...")
    }
}