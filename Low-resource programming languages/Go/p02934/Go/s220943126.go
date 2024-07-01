package main
 
import(
  "fmt"
  "strconv"
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
 
func abc138b(rerow []string, N int){
	sum := 0.0
	ans := 0.0
	for _,num := range rerow{
		ans,_ := strconv.ParseFloat(num,32)
		sum = sum + 1 / ans
	}
	ans = 1 / sum
	fmt.Println(ans)
}	
 
func main(){
	flag := 0
	N := 0
	var s []string
	for i := 0; i < 2; i++{
		if flag != 1{
			s = Rr()
			N,_ = strconv.Atoi(s[0])
		} else {
			s = Rr()
		}
	}
	abc138b(s,N)
}