package main

import "fmt"

func main() {

	//入力
	var n int
	fmt.Scan(&n)
	var flag  = true
	//初回だけスカ
	var height_now int
	fmt.Scan(&height_now)
	height_now = 1

	for i:= 1 ; i < n ; i++{
		//入力
		var height_next int
		fmt.Scan(&height_next)

		if(height_now < height_next){

			height_now = height_next - 1

		}else if (height_now > height_next) {

			flag = false
			break

		}
	}

	if(flag){
		fmt.Println("Yes")
	}else{
		fmt.Println("No")
	}
}
