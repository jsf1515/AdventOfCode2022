component {

    part1 = () => {
        var elves = [0];
        var inputs = fileRead("./input.txt")
            .replace(chr(10), "|", "all")
            .replace("||", ",*,", "all")
            .replace("|", ",", "all")
            .listToArray()
            .each((input) => {
                input != "*" 
                    ? elves[elves.len()] = elves.last() + input 
                    : elves.push(0)
            });

        var topElf = elves.max();

        print.line("top elf has #topElf# calories");
    }

    part2 = () => {
        var elves = [0];
        var inputs = fileRead("./input.txt")
            .replace(chr(10), "|", "all")
            .replace("||", ",*,", "all")
            .replace("|", ",", "all")
            .listToArray()
            .each((input) => {
                input != "*" 
                    ? elves[elves.len()] = elves.last() + input 
                    : elves.push(0)
            });

        var topThreeElves = elves
            .sort("numeric","desc")
            .slice(1,3)
            .reduce((previous,current) => {
                return previous + current
            },0);

        print.line("top 3 elves have #topThreeElves# calories" );
    }

}