package main

import "fmt"

func main(){
	var S string;

	fmt.Scan(&S);
	var week = [7]string {
		"SUN", "MON", "TUE", "WED", "THU", "FRI", "SAT",
	}

	for i := 0 ; i < 7 ; i++{
		if S == week[i] {
			fmt.Println(7-i);
			
		}
	}
}