class Member
  
  attr_reader :name, :allies, :photo, :enemies, :affiliation

  def initialize(attributes)
    @name = attributes[:name]
    @allies = attributes[:allies]
    @photo = attributes[:photoUrl]
    @enemies = attributes[:enemies]
    @affiliation = attributes[:affiliation]
  end
end