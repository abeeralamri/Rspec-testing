class StringAnalyzer
    def has_vowels?(str)
        !!(str =~ /[aeoiu]+/i)
    end

end

describe StringAnalyzer do
    it "Should detect when a string contain only vowels" do
        s1 = StringAnalyzer.new
        expect(s1.has_vowels?("oo")).to be true
        
    end
    it "Should detect when a string contain vowels with other letters" do
        s1 = StringAnalyzer.new
        expect(s1.has_vowels?("nooo")).to be true
        
    end
    it "Should detect when a string not contain vowels" do
        s1 = StringAnalyzer.new
        expect(s1.has_vowels?("mkr")).not_to be true
        
    end
    it "Should detect when a string empty" do
        s1 = StringAnalyzer.new
        expect(s1.has_vowels?("")).not_to be true   
    end

    it "Should detect when a string contain vowels, constatnts, numbers, punctuation characters" do
        s1 = StringAnalyzer.new
        expect(s1.has_vowels?("mko12!?")).to be true   
    end

    it "Should detect when a string contain only numbers and punctuation characters" do
        s1 = StringAnalyzer.new
        expect(s1.has_vowels?("12!?")).not_to be true   
    end

    it "Should detect when a string contain upper case vowels only" do
        s1 = StringAnalyzer.new
        expect(s1.has_vowels?("OUA")).to be true   
    end

    it "Should detect when a string contain upper case and lower case vowels only" do
        s1 = StringAnalyzer.new
        expect(s1.has_vowels?("OUAei")).to be true   
    end
    it "Should detect when a string contain upper case and lower case vowels with constants" do
        s1 = StringAnalyzer.new
        expect(s1.has_vowels?("OUAeiMk")).to be true   
    end

    it "Should detect when a string contain only upper case constants" do
        s1 = StringAnalyzer.new
        expect(s1.has_vowels?("MKY")).not_to be true   
    end

    it "Should detect when a string contains whitespace character only" do
        s1 = StringAnalyzer.new
        expect(s1.has_vowels?(' ')).not_to be true   
    end
end