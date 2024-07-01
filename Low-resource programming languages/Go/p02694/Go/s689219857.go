package main

import "fmt"

func main(){
	var X int64;
	var in int64 ;

	in = 100;

	fmt.Scan(&X);
	var i int64;
	i = 0;
	for i = 1 ; i < 10000 ; i++{
		in = int64(float64(in) * 1.01);

		if in >= X {
			break;
		}
	}
	
	fmt.Println(i);
}