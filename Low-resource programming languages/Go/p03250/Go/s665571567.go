package main
import "fmt"

func main(){
	var A,B,C int
	fmt.Scan(&A,&B,&C)
	if A > B && A > C{
		fmt.Println(10*A + B + C)
	}else if B > A && B > C{
		fmt.Println(10*B + A + C)
	}else{
		fmt.Println(10*C + A + B)
	}

}
