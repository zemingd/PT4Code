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
              fmt.Printf("%s\n", num)
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
	abc138atest(rerow)
}