package main
import (
	"fmt"
)
func main()  {

	var K,X int
	fmt.Scan(&K,&X)
	if 500*K >X {
		fmt.Println("Yes")
	}else{
		fmt.Println("No")
	}

}

