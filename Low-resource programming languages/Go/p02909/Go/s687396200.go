package main

import "fmt"

func main() {
	var num int
	var n string
	fmt.Scanf("%s",n)
	
	
	weathers := [3]string{"Sunny","Cloudy","Rainy"}
	
	for i:=0; i < len(weathers); i++ {
		if weathers[i] == n {
			num = i
			break
		}
	}
	num = (num + 1) % len(weathers)
	
	fmt.Printf("%s",weathers[num])
}