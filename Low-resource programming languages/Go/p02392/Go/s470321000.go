package main
import (
        "bufio"
        "fmt"
        "os"
        "strings"
        "strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextLine() string {
    sc.Scan()
    return sc.Text()
}

func Atoi2(c string) int {
  tmp, _ := strconv.Atoi(c)
  return tmp
}

func main() {
	input := nextLine()
	rec := strings.Split(input, " ")
	var hoge []int
  var output string

	for _, c := range rec{
		hoge = append(hoge, Atoi2(c))
	}

  if hoge[0] < hoge[1] && hoge[1] < hoge[2]{
    output = "Yes"
  }else{
    output = "No"
  }

	fmt.Println(output)
}
