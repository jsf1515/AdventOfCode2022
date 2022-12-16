component {

    part1 = () => {
        fileRead("./inputs.txt")
            .listToArray(chr(10))
            .each((input) => {
                print.line("found at line #processDups(input,4)#")
            })
    }

    part2 = () => {
        fileRead("./inputs.txt")
            .listToArray(chr(10))
            .each((input) => {
                print.line("found at line #processDups(input,14)#")
            });
    }

    private numeric function processDups(required string searchArray, required numeric howMany){
        for(i=arguments.howMany; i <= arguments.searchArray.len(); i++){
            if(arguments.searchArray
                    .mid(i-arguments.howMany+1, arguments.howMany)
                    .listRemoveDuplicates("")
                    .len() == arguments.howMany
            ){
                return i;
            }
        }

        return 0;
    }

}