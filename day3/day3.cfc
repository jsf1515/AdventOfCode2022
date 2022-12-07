component {

    part1 = () => {
        var letterValues = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ";
        var inputs = fileRead("./inputs.txt")
            .listToArray(chr(10))
            .map((input) => {
                input = input.listToArray("");
                
                var part1 = input.slice(1, input.len()/2);
                var part2 = input.slice((input.len()/2)+1, input.len()/2);

                part1.each((searchValue) => {
                    if(part2.contains(searchValue)){
                        foundMatch = searchValue;
                        break;
                    }
                });

                return letterValues.find(foundMatch);
            })
            .sum()

        print.line("sum of the items is #inputs#");
    }

    part2 = () => {
        var letterValues = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ";
        var inputs = fileRead("./inputs.txt").listToArray(chr(10));

        var newInputs = [];
        
        for(i=1; i<inputs.len(); i=i+3){
            newInputs.append([
                inputs[i].listToArray(""),
                inputs[i+1].listToArray(""),
                inputs[i+2].listToArray("")
            ]);
        }

        newInputs = newInputs.map((input) => {
            input[1].each((searchLetter) => {
                if( input[2].contains(searchLetter) && input[3].contains(searchLetter) ){
                    foundMatch = searchLetter;
                    break;
                }
            });

            return letterValues.find(foundMatch);
        })
        .sum()

        print.line(newInputs)

    }

}