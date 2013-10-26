require './lib/palindrome'

describe Palindrome do
  describe "#palindrome?" do
    it "is true for empty string" do
      expect(Palindrome.palindrome?('')).to be_true
    end

    it "is true for single character string" do
      expect(Palindrome.palindrome?('a')).to be_true
      expect(Palindrome.palindrome?('A')).to be_true
    end

    it "is true for strings with only special characters" do
      expect(Palindrome.palindrome?(%q{,.!?;:'"-})).to be_true
    end

    it "is true for strings with only white space" do
      expect(Palindrome.palindrome?(%q{       })).to be_true
    end

    describe "for two letter strings" do
      it "is true if the characters are the same" do
        expect(Palindrome.palindrome?('aa')).to be_true
        expect(Palindrome.palindrome?('AA')).to be_true
        expect(Palindrome.palindrome?('Aa')).to be_true
      end

      it "is false if the characters are not the same" do
        expect(Palindrome.palindrome?('ab')).to be_false
      end
    end

    describe "for three or more letter strings" do
      it "is true if the first and last character match" do
        expect(Palindrome.palindrome?('aba')).to be_true
      end

      it "is false if the first and last character do not match" do
        expect(Palindrome.palindrome?('abc')).to be_false
      end
    end

    describe "for four letter strings" do
      describe "if the first and last character match" do
        it "is true if the inner characters match" do
          expect(Palindrome.palindrome?('abba')).to be_true
        end

        it "is false if the inner characters do not match" do
          expect(Palindrome.palindrome?('abca')).to be_false
        end
      end
    end

    describe "common palindromes" do
      it "is true for dad" do
        expect(Palindrome.palindrome?('dad')).to be_true
      end

      it "is true for radar" do
        expect(Palindrome.palindrome?('radar')).to be_true
      end

      it "is true for racecar" do
        expect(Palindrome.palindrome?('racecar')).to be_true
      end

      it "is true for deed" do
        expect(Palindrome.palindrome?('deed')).to be_true
      end

      it "A man, a plan, a canal, Panama!" do
        expect(
            Palindrome.palindrome?(
                   'A man, a plan, a canal, Panama!'
            )
        ).to be_true
      end
    end

    describe "for numbers as strings" do
      it "is false for 123" do
        expect(Palindrome.palindrome?('123')).to be_false
      end

      it "is true for 111" do
        expect(Palindrome.palindrome?('111')).to be_true
      end

      it "is true for 1.01" do
        expect(Palindrome.palindrome?('1.01')).to be_true
      end

      it "is true for $1,001" do
        expect(Palindrome.palindrome?('$1,001')).to be_true
      end
    end

    describe "for numbers as literals" do
      it "is true for 1" do
        expect(Palindrome.palindrome?(1)).to be_true
      end

      it "is true for 11" do
        expect(Palindrome.palindrome?(11)).to be_true
      end

      it "is false for 12" do
        expect(Palindrome.palindrome?(12)).to be_false
      end

      it "is true for 121" do
        expect(Palindrome.palindrome?(121)).to be_true
      end

      it "is false for 123" do
        expect(Palindrome.palindrome?(123)).to be_false
      end

      it "is true for 1.01" do
        expect(Palindrome.palindrome?(1.01)).to be_true
      end
    end

  end

end
