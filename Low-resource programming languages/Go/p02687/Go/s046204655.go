	reader := bufio.NewReader(os.Stdin)
	text, _ := reader.ReadString('\n')

	fmt.Println(strings.Replace(text, "B", "R", -1))