package main
import (
        "bufio"
        "fmt"
        "os"
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
  i := Atoi2(input)

  h := i/3600
  m := i%3600/60
  s := i%3600%60

	fmt.Printf("%d:%d:%d\n",h,m,s)
}
