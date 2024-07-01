package main
import "fmt"

func main(){
	var N int
	fmt.Scan(&N)

	var M int
	fmt.Scan(&M)

	var rem int
	rem = (N*M)%2
	if rem == 0{
		fmt.Println("Even")
	}else{
		fmt.Println("Odd")
	}	
}