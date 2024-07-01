package main

import "fmt"

func isPrime(num int) bool {
	for i := 2; i < num; i++ {
		if num%i == 0 {
			return false
		}
	}
	return true
}

func main() {
	var x int
	fmt.Scan(&x)

	for i:=x;;i++{
		if isPrime(i){
			fmt.Println(i)
			break
		}
	}
}