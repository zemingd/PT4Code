package main

import "fmt"

func checkDigit(num int) bool{
	for i:=0; i<3; i++{
		num = num % 10
		if num == 7{
			return true
		}
	}
	return false
}

func main() {
	var n int
	fmt.Scan(&n)
	if n < 100 || n > 1000{
		return
	}

	if checkDigit(n) {
		fmt.Println("Yes")
	}else{
		fmt.Println("No")
	}

}