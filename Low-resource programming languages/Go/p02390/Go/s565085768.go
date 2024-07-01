package main
import "fmt"

func main() {
	var A int
	fmt.Scan(&A)
var yebi = A/3600 int
A -= yebi*3600
var hoge = A/60 int
A -= hoge*60 
	fmt.Println(yebi,":",hoge,":",A)
}

