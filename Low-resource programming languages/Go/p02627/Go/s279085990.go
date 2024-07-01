package main 
import (
	"fmt"
)

func main (){
	var a string 
	fmt.Scan(&a)
	s := strings.ToUpper(a)
	if a == s{
		fmt.Println("A")
	}else{
		fmt.Println("a")
	}
}