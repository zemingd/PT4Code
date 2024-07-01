package main

import(
  "fmt"
  "strconv"
	"bufio"
	"os"
	"strings"
)

//関数は大文字にせねば見てもらえぬ
//ここはスキャナー部分
//行多数の時。
func Serr() []string {
	var sc = bufio.NewScanner(os.Stdin)
  sc.Scan()
  rep := strings.NewReplacer(".", "", ",", "", "\n", "", "\r", "")
  slice := strings.Split(rep.Replace(sc.Text()), " ")
  return slice
}


func Rr() []string {
	var sc = bufio.NewScanner(os.Stdin)
  sc.Scan()
  slice := strings.Split(sc.Text(), " ")
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
				fmt.Println(num)
			}
		}
	}
}

func main(){
	rerow := []string{}
	for i := 0; i < 2; i++{
		s := Rr()
		rerow = append(rerow, s[0])
	}
	//deftest(rerow)
	abc138atest(rerow)
}
