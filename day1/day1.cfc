component {

    part1 = () => {
        var topElf = parseInputs().max();
        print.line("top elf has #topElf# calories");
    }

    part2 = () => {
        var topThreeElves = parseInputs()
            .sort("numeric","desc")
            .slice(1,3)
            .reduce((previous,current) => {
                return previous + current
            },0);

        print.line("top 3 elves have #topThreeElves# calories" );
    }

    private array function parseInputs(){
        var elves = [0];

        fileRead("./input.txt")
            .replace(chr(10), "|", "all")
            .replace("||", ",*,", "all")
            .replace("|", ",", "all")
            .listToArray()
            .each((input) => {
                input != "*" 
                    ? elves[elves.len()] = elves.last() + input 
                    : elves.push(0)
            });

        return elves;
    }

}