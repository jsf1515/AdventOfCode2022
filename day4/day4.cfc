component {

    part1 = () => {
        var inputs = fileRead("./inputs.txt")
            .replace("-", ",", "all")
            .listToArray(chr(10))
            .map((input) => {
                values = input.listToArray();
                
                if(
                    values[1] >= values[3] && values[2] <= values[4]
                    ||
                    values[3] >= values[1] && values[4] <= values[2]
                ){
                    return 1;
                } else {
                    return 0;
                }
            })

        print.line(inputs)
    }

    part2 = () => {
        var inputs = fileRead("./inputs.txt")
            .replace("-", ",", "all")
            .listToArray(chr(10))
            .map((input) => {
                values = input.listToArray();

                if(
                    values[1] >= values[3] && values[1] <= values[4]
                    ||
                    values[3] >= values[1] && values[3] <= values[2]
                ){
                    return 1
                } else {
                    return 0;
                }
            })
            .sum()

        print.line(inputs)
    }

}