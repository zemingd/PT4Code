package main
import (
   "fmt"
   "os"
   "bufio"
   "strconv"
)
var sc = bufio.NewScanner(os.Stdin)

func main() {
  sc.Split(bufio.ScanWords)
  s := nextString()
  str := []string{
	  //"maerd",
	  "dream",
	  //"remaerd",
	  "dreamer",
	  //"esare",
	  "erase",
	  "eraser",
	  //"resare",
  }

  for i := 0; i <len(str); i++{
	  str[i] = reverse(str[i])
  }

  s = reverse(s)

  if isExist(s, str) {
    fmt.Println("YES")
  } else {
    fmt.Println("NO")
  }


}

func reverse(s string) string {
	runes := []rune(s)
	for i, j := 0, len(runes)-1; i < j; i, j = i+1, j-1 {
		runes[i], runes[j] = runes[j], runes[i]
	}
	return string(runes)
}


func isExist(s string, strList []string) (bool){
	listLen := len(strList)
	for 0 < len(s){
	  str := ""
      var ok bool
	  for i, v := range s {
	    str = str + string(v)
		for j := 0; j < listLen; j++ {
			if str == strList[j] {
				s = s[i + 1:]
				ok = true
				break
			}
		}
	  }
      if !ok {
        return false
      }

    }
	return true
}

func arrayExist(element int, arr []int) (bool) {
	  for _, v := range arr {
		  if v == element {
			  return true
		  }
	  }
	  return false
}

func nextString() (string) {
	sc.Scan()
	v := sc.Text()
	return v
}

func nextInt() (int) {
	sc.Scan()
	v, e := strconv.Atoi(sc.Text())
    if e != nil { panic(e) }
    return v
}

func nextFloat() (float64) {
	sc.Scan()
	v, e := strconv.ParseFloat(sc.Text(), 64)
    if e != nil { panic(e) }
    return v
}
