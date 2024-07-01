package main
import (
    "bufio"
    "fmt"
    "os"
  "unicode"
)
func main(){
    stdin := bufio.NewScanner(os.Stdin)
    for stdin.Scan() {
    	S := stdin.Text()
		var yes bool = true
      	if S[0] != 'A' {
        	yes = false
      	}
      	if ! unicode.IsLower(rune(S[1])) {
        	yes = false
      	}
      	var largeC = 0
      	for i := 2; i < len(S); i++ {
        	if unicode.IsLower(rune(S[i])) {
            } else if (S[i] == 'C' && i != len(S) - 1) {
           		largeC += 1 
        	} else {
          		yes = false
        	}
      	}
      
      	if largeC != 1 {
        	yes = false
      	}
      	if yes {
        	fmt.Println("AC")
      	} else {
        	fmt.Println("WA")
      	}
    }
}