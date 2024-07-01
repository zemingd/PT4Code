package main
import (
	"fmt"
)

func f(n){
	if n % 2 == 0{
		return n/2
	}else{
		return 3*n+1
	}
}

func main(){
	var s int
	fmt.Scan(&s)

	for i := 0; i<s; i++{
    for j:=1; j<i; j++{
      if f(i) == f(j){
        fmt.Print(i)
				return
      }
    }
  }

}

