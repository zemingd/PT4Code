package main

import (
	"fmt"
	//"strconv"
)

func main() {
	var k, x int
	fmt.Scanf("%d %d", &k, &x)
	var output string
	//var tmp string
	for i := 1; i < 2*k; i++ {
		/*tmp = strconv.Itoa(x - k + i)
		output += output + " " + tmp
		*/
		fmt.Printf("%d ", x-k+i)
	}
	fmt.Printf("%s", output)
}
