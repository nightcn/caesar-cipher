def substrings(str, dictionary)
    for i in 0...str.split(" ").length do
        sstrings = dictionary.reduce(sstrings || Hash.new(0)) do |ssObj, word|
            ssObj[word] += 1 if /#{word}/i.match?(str.split(" ")[i])
            ssObj
        end
    end
    sstrings
end


p substrings("below up low", ["below", "low"])

dic = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

p substrings("Howdy partner, sit down! How's it going?", dic)