package main
import (
	"fmt"
	"bufio"
	"os"
)

func main() {
	r := bufio.NewReader(os.Stdin)
	var a,b,c int
	var temp int
	fmt.Fscan(r,&a,&b,&c)
	if(a>b){
		temp=a
		a=b
		b=temp
	}
	if(b>c){
		temp=b
		b=c
		c=temp
	}
	if(a>b){
		temp=a
		a=b
		b=temp
	}
	fmt.Printf("%d %d %d\n",a,b,c)
}
