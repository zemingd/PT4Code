package main
import(
	"fmt"
)
func main(){
	var a,b int
	fmt.Scan(&a,&b)
	if (b-a) <0 {
		fmt.Println(1)
		
	}else{
		c := (b - a)/(a-1)
		if (b - a)%(a-1) == 0{
			fmt.Println(c+1)
		}else{
			fmt.Println(c+2)
		}
	}
}