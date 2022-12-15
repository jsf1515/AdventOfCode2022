component {

    part1 = () => {
        var inputs = fileRead("./inputs.txt")
            .listToArray(
                delimiter = "#chr(10)##chr(10)#", 
                includeEmptyFields = true,
                multiCharacterDelimiter = true
            );

        var moves = inputs[2]
            .listToArray(chr(10))
            .map((input) => {
                moveArray = input.listToArray(" ");

                return {
                    "from" : moveArray[4],
                    "to" : moveArray[6],
                    "howMany" : moveArray[2]
                }
            });

        var stacks = inputs[1]
            .listToArray(chr(10))

        var itemPositionsStruct = {}

        var itemPositions = stacks.pop()
            .listToArray("")
            .each((input,index) => {
                if(isNumeric(input)){
                    itemPositionsStruct.append(
                        {"stack_#input#" : index }
                    )
                }
            });

        var pivotArray = [];

        for(i=1; i <= itemPositionsStruct.count(); i++){
            var itemList = [];

            stacks.each((input) => {
                if(input[itemPositionsStruct["stack_#i#"]] != " "){
                    itemList.prepend(input[itemPositionsStruct["stack_#i#"]]);
                }
            });

            pivotArray[i] = itemList;
        }

        moves.each((input) => {
            for(i=1; i <= input.howMany; i++){
                pivotArray[input.to].append(
                    pivotArray[input.from].pop()
                )
            }
        });

        var wordString = "";

        pivotArray.each((input) => {
            wordString = wordString & input.last()
        })

        print.line(wordString)
    }

    part2 = () => {}

}