require_relative '../lib/elves'

describe Elf do

  let(:elf) { Elf.new("Elfy") }

  describe "#castSpell" do
    it "should cast a spell if spellcount is greater than or equal to 0" do
      expect(elf.castSpell).to eq true
    end
    it "should not cast a spell if spellcount is less than 0" do
      for i in 0..5
        elf.castSpell
      end
      expect(elf.castSpell).to_not eq true
    end
  end

  describe "#regenSpell" do
    it "should regenerate spellcount to 5" do
      expect(elf.regenSpell).to eq 5
    end

  end

end
