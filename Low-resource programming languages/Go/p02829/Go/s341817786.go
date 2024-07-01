package main
 
import(
  "fmt"
	"bufio"
	"os"
	"strings"
)
 
var sc = bufio.NewScanner(os.Stdin)
 
func Rr() []string {
  sc.Scan()
  slice := strings.Split(sc.Text(), " ")
  return slice
}
 
func solver(a int, b int){
	if a+b==3{
		fmt.Println(3)
	}else if a+b==4{
		fmt.Println(2)
	}else{
		fmt.Println(1)
	}
}
 
func main(){
	a := 0
	b := 0
	fmt.Scan(&a)
	fmt.Scan(&b)
	solver(a,b)
}