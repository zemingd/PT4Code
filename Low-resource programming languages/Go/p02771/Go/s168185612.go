package main

import "fmt"

func main() {
	var a, b, c int
	fmt.Scan(&a, &b, &c)

	if (a > 10 || b > 10 && c >10) && (a<1 && b < 1 && c < 1){
		return
	}

	if (a == b && b != c) || (a == c && c != b) || (b == c && a != b){
		fmt.Println("Yes")
	}else{
		fmt.Println("No")
	}
}