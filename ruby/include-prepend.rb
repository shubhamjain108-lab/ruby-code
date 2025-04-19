module A
  def aa
    p "A aa"
  end
end

class AA
  prepend A

  def aa
    p "AA aa"
  end
end

a1 = AA.new

a1.aa
