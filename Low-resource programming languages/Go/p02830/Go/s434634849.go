package main

import "fmt"

func main(){
	var count int
	var sParam1, sParam2 string
	fmt.Scanf("%d", &count)
	fmt.Scanf("%s %s", &sParam1, &sParam2)

	var i int
	var ret string
	for i = 0; i < count;i++ {
		ret += sParam1[i:i+1]
		ret += sParam2[i:i+1]
	}

	fmt.Printf("%s\n", ret)
}
