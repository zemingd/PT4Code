package main

import ("fmt")

func hoge(a int, b int) int {	
	if (a == 1 && b == 2) || (a == 2 && b == 1){
		return 3
	}else if (a == 1 && b == 3) || (a == 3 && b == 1) {
		return 2
	} else{
		return 1
	}
}

	func main(){
		var a, b int
		fmt.Scan(&a, &b)
		fmt.Println(hoge(a, b))
	}