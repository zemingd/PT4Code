import(
	"bufio"
	"os"
	"strings"
    "fmt"
    "strconv"
)

//関数は大文字にせねば見てもらえぬ
//ここはスキャナー部分
func Rr() []string {
  var sc = bufio.NewScanner(os.Stdin)
  sc.Scan()
  rep := strings.NewReplacer(".", "", ",", "", "\n", "", "\r", "")
  slice := strings.Split(rep.Replace(sc.Text()), " ")
  return slice
}

func abc138atest(rerow []string){
	var flag = 0
	var ans = 0
	for _,num := range rerow{
		if flag != 1{
			ans, _ = strconv.Atoi(num)
			flag = 1
		}else{
			if ans < 3200{
				fmt.Println("red")
			}else{
				fmt.Println()
			}
		}
	}
}

func main(){
	rerow := Rr()
	abc138atest(rerow)
}