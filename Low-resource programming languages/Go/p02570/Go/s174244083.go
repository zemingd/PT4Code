package main

import "fmt"

func main(){
	var dis, t, speed int
	var err error

	_, err = fmt.Scanf("%d %d %d", &dis, &t, &speed)
	if err != nil {
		return
	}

	if t*speed >= dis{
		fmt.Println("Yes")
	}else{
		fmt.Println("No")
	}
	
}
