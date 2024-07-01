package main
import (
	"fmt"
)

func main(){
	p:=int64(100)
	var g int64
	fmt.Scan(&g)
	year:=0
	for p<g {
		p = p + int64(p/100)
		year++
	}
	fmt.Println(year)


}