class Elf
  attr_accessor :name

  def initialize(name)
    @name = name
    @spellcount = 5
  end

  def castSpell
    if @spellcount >= 0
      @spellcount -= 1
      @spell = true
    else
      @spell = false
    end
  end

end
