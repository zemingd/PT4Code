package main
import "fmt"

func main(){
	var a, b int
	fmt.Scan(&a, &b)
	if a > b{
		fmt.Printf("%d\n",a-1)
	}else{
		fmt.Printf("%d\n",a)
	}
}